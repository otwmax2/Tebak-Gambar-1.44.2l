# Runbook deployment produksi

## Status dan batas tanggung jawab

Kode game dan preflight diuji lokal. **Belum ada BOT_TOKEN/server target yang diberikan; bot Telegram live belum dideploy.** Sandbox ini tidak memiliki akses outbound ke host Telegram. Jalankan pemeriksaan `--telegram` hanya pada server milik pengelola yang memiliki akses HTTPS Telegram.

Panduan ini tidak mengeksekusi SSH, meminta password/SSH key, menggunakan credential APK, mengaktifkan workflow tanpa izin, atau menganggap test mock sebagai pengujian Telegram nyata.

Pilih **satu** jalur operasi: Docker Compose (direkomendasikan untuk host yang memiliki Docker) **atau** systemd. Jangan menjalankan keduanya untuk token yang sama.

## Guard dan timeout versi 1.1.0

[Laporan upgrade](UPGRADE.md). Startup memegang exclusive SQLite lock di file terpisah `DATABASE_PATH + .instance.sqlite` melalui path kanonik. File ini tetap ada setelah stop: **jangan hapus/ganti/rotasi ketika ada proses yang mungkin hidup**. Crash melepaskan lock kernel; tidak perlu membersihkan file stale. Hanya filesystem lokal/path DB sama yang terlindungi, bukan token di server/DB lain. Tetap satu poller untuk satu token.

`API_TIMEOUT_SECONDS` default 45, rentang 35–120 detik. Plugin tidak me-retry HTTP error tanpa batas; polling menangani reconnect tersendiri. SIGINT/SIGTERM membatalkan request biasa/init; outbox in-flight mempunyai grace 25 detik, lalu di-abort dan tetap pending. Tidak menjamin delivery exactly-once atau menyelesaikan CPU native dalam grace.

Backup membuat file tujuan eksklusif mode 600 sebelum menulis dan memverifikasi quick_check; nama yang sudah ada ditolak. Jangan menjalankan instalasi dependency/update saat bot masih aktif. Schema tetap 1/2, indeks baru idempotent. Runtime menolak versi schema masa depan sebelum mutasi.

## A. Checklist host dan rahasia

- Linux dengan disk persisten, akun layanan khusus, Node 22.13+ LTS bila tidak memakai Docker. Runtime harus terpelihara dengan update keamanan.
- Waktu sistem tersinkron NTP. Deadline/refill memakai waktu host dan hadiah harian UTC, bukan zona waktu perangkat pemain.
- DNS dan outbound HTTPS `api.telegram.org:443` diizinkan. Polling tidak memerlukan port HTTP publik atau reverse proxy.
- Satu bot token khusus untuk deployment ini, bukan token yang sedang dipakai instance/webhook lain.
- Backup ditempatkan pada storage privat, idealnya salinan terenkripsi di host/storage lain. Menyalin file ke direktori runtime bukan disaster recovery jika disk host hilang.
- BOT_TOKEN di `.env`/environment lokal, permission 600. Jangan kirim lewat chat, taruh di shell command/history, commit, screenshot, atau argument CLI.
- ADMIN_IDS berisi ID numerik Telegram pengelola. Username bukan ID. Kosong berarti fitur admin tidak dapat digunakan.
- Aset: clone **repo lengkap**, bukan hanya `bot/`; 400 PNG, 10 frame dan 11 Ogg dibutuhkan.
- Untuk grup: konfigurasi BotFather privacy/permission agar bot menerima jawaban teks biasa. Inline mode opsional.
- Jangan memakai runtime/database `:memory:` untuk produksi. Entry point sekarang menolak mode ini.

Jangan paste keluaran `docker compose config`, `docker inspect`, `env`, `printenv`, `.env`, atau exception library debug ke tempat publik: perintah tersebut dapat memperlihatkan environment/token. Log aplikasi sendiri dibuat tanpa token; jangan aktifkan DEBUG library sembarangan.

## B. Pemeriksaan sebelum startup — doctor

Setelah `npm ci` dan `npm run build`:

```bash
cd bot
npm run doctor:offline
# Isi .env lokal; lalu cek produksi tanpa jaringan:
npm run doctor
# Pada HOST DEPLOYMENT, probe read-only Telegram:
npm run doctor -- --telegram
# JSON untuk otomasi lokal:
npm run doctor -- --json
```

`doctor` memakai JavaScript compiled, tetap tersedia setelah `npm prune --omit=dev`.

| Mode | Token wajib | Akses Telegram | Efek |
|---|---|---|---|
| `doctor:offline` / `doctor --offline` | Tidak; token kosong menjadi warning | Tidak pernah | Local readiness, bukan bukti production-ready |
| `doctor` | Format valid dan bukan placeholder simulasi | Tidak | Konfigurasi, aset, izin directory dan DB |
| `doctor --telegram` | Ya | getMe + getWebhookInfo saja | Memverifikasi autentikasi dan melihat apakah webhook aktif |

Doctor:
- Memeriksa versi Node, 400 hash/manifest, 10 frame dengan pixel/alpha, 11 header Ogg.
- Membuat/menghapus file probe random mode 600 di directory SQLite; tidak membuat/migrasikan database game.
- Bila DB ada: memeriksa file writable oleh akun proses tanpa write data, membuka read-only, menjalankan SQLite quick_check/foreign_key_check dan memeriksa versi migration 1–2. Ini bukan forensic audit atau backup.
- Memberi warning untuk runtime/file permission terlalu luas, admin kosong, webhook aktif, dan setting privacy grup.
- Tidak mengirim pesan, memasang command, menghapus webhook, memulai polling atau membocorkan token/path request Telegram.
- Tidak dapat membuktikan tidak ada instance lain, kondisi API sendPhoto atau durabilitas storage setelah host rusak.
- Return code: **0** tidak ada failure (warning masih harus ditinjau), **1** not-ready/config error, **2** argument CLI salah.

Jalankan doctor dengan **akun/volume/environment yang sama** seperti bot, bukan sebagai root untuk membuktikan izin akun non-root. Jangan abaikan warning permission. Directory runtime khusus gunakan 700, SQLite/backup 600; jangan chmod directory sistem yang dipakai bersama.

`--offline` dan `--telegram` tidak boleh digabung pada CLI. `--telegram` belum dijalankan terhadap Telegram nyata di sandbox; test hanya menginjeksi API mock.

## C. Docker Compose

Di host pemilik, clone branch yang berisi implementasi terbaru:

```bash
git clone --branch arena/2926bc24-tebak-gambar-1-44-2l https://github.com/otwmax2/Tebak-Gambar-1.44.2l.git
cd Tebak-Gambar-1.44.2l
cp bot/.env.example bot/.env
chmod 600 bot/.env
# Edit bot/.env menggunakan editor lokal, jangan echo token ke terminal.
docker compose -f bot/compose.yaml build
```

Catat commit/image yang akan dirilis di catatan operasi pengelola. Gunakan Docker Compose v2. Tidak ada port produksi yang diekspos. Docker menjalankan aplikasi sebagai akun `node`; named volume `game-data` mempertahankan DB.

Sebelum pertama start (memakai environment dan volume service yang sama):

```bash
docker compose -f bot/compose.yaml run --rm --no-deps tebak-gambar node dist/scripts/doctor.js
# Opsional pada host ini: autentikasi read-only
docker compose -f bot/compose.yaml run --rm --no-deps tebak-gambar node dist/scripts/doctor.js --telegram
docker compose -f bot/compose.yaml up -d --no-build
docker compose -f bot/compose.yaml logs --tail=100 tebak-gambar
```

Startup produksi memanggil getMe, **menghapus webhook tanpa drop pending updates**, memasang menu command, lalu menjalankan polling/scheduler. Karena itu hentikan service lama dahulu; doctor sendiri tidak mengubah webhook.

Setelah running:

```bash
docker compose -f bot/compose.yaml ps
docker compose -f bot/compose.yaml exec tebak-gambar node dist/scripts/doctor.js
docker compose -f bot/compose.yaml stop tebak-gambar
# Start kembali hanya instance ini:
docker compose -f bot/compose.yaml up -d --no-build
```

`ps`/proses hidup bukan jaminan polling sehat; validasi pesan nyata dengan acceptance checklist di bawah. Compose/template Docker **belum dibuild/dijalankan di sandbox**.

Jangan memakai `down -v`, `volume prune`, mengganti Compose project name/`-p`, atau rename volume ketika menjaga progres. Named volume terikat project; project baru dapat membuat DB kosong. Pada upgrade, gunakan file/project/volume yang sama dan satu replica.

### Backup Docker

```bash
docker compose -f bot/compose.yaml exec tebak-gambar node dist/scripts/backup.js /app/bot/runtime/backup-2026-10-15.sqlite
# Salin ke lokasi privat host; tujuan tidak boleh berada di checkout Git.
docker compose -f bot/compose.yaml cp tebak-gambar:/app/bot/runtime/backup-2026-10-15.sqlite /secure/backups/backup-2026-10-15.sqlite
chmod 600 /secure/backups/backup-2026-10-15.sqlite
```

Siapkan `/secure/backups` sendiri dengan izin tepat; ganti nama/tanggal agar file tujuan baru. CLI menolak overwrite snapshot. Setelah salinan tervalidasi, kirim ke storage privat terpisah menurut kebijakan pengelola. Jangan mengirim `.env` bersamaan ke repo/storage publik.

## D. systemd (alternatif Docker)

Contoh template mengasumsikan checkout `/opt/tebak-gambar`, binary `/usr/bin/node`, user/group `tebakgambar`. **Sesuaikan path binary** setelah instalasi Node global; binary dari home/NVM tidak cocok dengan `ProtectHome=true`.

Dengan hak administrator host, buat akun layanan dan directory yang diperlukan (contoh Linux):

```bash
sudo useradd --system --home-dir /opt/tebak-gambar --shell /usr/sbin/nologin tebakgambar
sudo install -d -m 700 -o tebakgambar -g tebakgambar /opt/tebak-gambar/bot/runtime
sudo install -m 600 bot/.env.example /etc/tebak-gambar.env
# Edit /etc/tebak-gambar.env lokal sebagai admin.
```

Checkout/build aplikasi dapat dikelola oleh akun deployment, bukan writable oleh user layanan. Pastikan file executable/assets dapat dibaca `tebakgambar`, sedangkan **hanya runtime yang perlu write access**. Jangan chown semua source ke akun bot jika tidak diperlukan. Build dahulu dengan Node/npm sesuai README.

```bash
sudo install -m 644 bot/deploy/tebak-gambar.service /etc/systemd/system/tebak-gambar.service
sudo systemctl daemon-reload
sudo systemctl start tebak-gambar
sudo systemctl status tebak-gambar
sudo journalctl -u tebak-gambar --no-pager -n 100
# Enable setelah acceptance lulus:
sudo systemctl enable tebak-gambar
```

Entry point produksi juga menjalankan checks lokal sebelum membuka/migrasikan DB dan menghubungi Telegram. `ExecStartPre` menjalankan doctor local dengan environment/user service sebelum polling. EnvironmentFile dibaca systemd dan harus dijaga root; tidak perlu membuat user bot bisa membaca file rahasia root langsung. Sediakan runtime path **sebelum** start karena `ReadWritePaths` bergantung pada directory tersebut.

Template tidak diklaim diuji systemd di sandbox. Account name, distro, path checkout/binary, SELinux/AppArmor dan mount filesystem harus diperiksa oleh pengelola host.

## E. Acceptance Telegram nyata — sebelum dibuka publik

Gunakan dua akun uji milik pengelola dan sebuah grup uji. Catat hasil tanpa token/PII dalam log rilis.

- [ ] doctor local tidak memiliki FAIL; warning permission/admin ditangani.
- [ ] doctor --telegram sukses; service lama berhenti dan webhook tidak konflik.
- [ ] `/start`, `/help`, `/play`, gambar soal dan keyboard muncul.
- [ ] Jawaban benar/hampir/salah bekerja; `/status` cocok dengan progres.
- [ ] Akun kedua tidak dapat memakai tombol hint/free-answer/delete milik akun pertama.
- [ ] `/daily` tidak dapat diambil berulang pada UTC-day yang sama.
- [ ] Raja timeout, stop penalti, refill dan checkpoint berjalan sesuai aturan.
- [ ] Restart proses di tengah sesi mempertahankan deadline/progres, tidak reset timer/reward.
- [ ] `/selfie` + photo menghasilkan foto di slot transparan frame, reward sekali/hari; input besar/invalid ditolak.
- [ ] `/sticker`, `/sound`, `/share`, dan `/export` bekerja pada klien Telegram yang akan didukung.
- [ ] `/group` menerima jawaban teks dengan privacy setting yang benar, hanya winner pertama mendapat reward.
- [ ] Akun non-admin tidak bisa menjalankan `/broadcast` atau `/suggestions`.
- [ ] Pengumuman/reminder hanya opt-in; blocked user tidak membuat scheduler berhenti.
- [ ] `/delete` butuh konfirmasi, akun lain tidak terhapus, `/start` membuat akun baru.
- [ ] Backup dapat dibaca dan restore di environment uji menghasilkan score/progres yang sama.
- [ ] Operator memahami log failure, 409, 429, 403 dan prosedur stop/rollback.

Jangan memakai nilai reward ekonomi/moneter sebagai acceptance anti-cheat: jawaban sudah tersedia publik di repository. Test engine/mock memberi bukti fungsi lokal, tidak menggantikan daftar di atas.

## F. Upgrade, rollback dan restore

### Upgrade normal

1. Catat commit/image dan project/volume saat ini.
2. Buat backup konsisten dari DB aktif, salin ke storage privat luar volume.
3. Hentikan satu-satunya proses bot. **Jangan drop pending Telegram updates.**
4. Ambil revision di branch sesi yang sama, install locked dependencies, `npm run check` dan build/image baru.
5. Jalankan doctor terhadap **volume/database yang sama**. Migration baru harus punya prosedur rollback yang ditinjau.
6. Start satu instance, uji `/status` dan acceptance smoke. Simpan catatan commit rilis.

### Rollback aplikasi

Hentikan bot, kembalikan image/artifact binary rilis lama melalui prosedur deployment host, bukan mengubah branch sesi repo ini. Pastikan schema lama kompatibel dengan DB sekarang. **Jangan menjalankan binary lama pada schema baru yang tidak didukung.** Simpan backup pre-upgrade; bila perlu restore, perubahan progres setelah backup akan hilang dan harus diketahui pengelola.

### Restore snapshot

1. Hentikan bot/poller/scheduler; pastikan tidak ada proses lain yang membuka DB.
2. Simpan DB dan sibling WAL/SHM lama sebagai evidence/backup privat jika masih dibutuhkan. Jangan menghapus WAL ketika proses masih hidup.
3. Validasi snapshot menggunakan SQLite quick_check dan schema yang sesuai. Jangan menerima file restore dari pengguna Telegram atau endpoint publik.
4. Ganti DB dengan snapshot pada filesystem/volume yang sama, ownership service dan mode 600; jangan gunakan WAL/SHM lama bersama snapshot baru.
5. Jalankan doctor dengan user/environment/volume service, lalu start satu instance dan periksa progres.

Helper backup diuji dengan DB aktif/WAL, tetapi restore **belum dieksekusi pada deployment produksi**. `VACUUM INTO` menghasilkan file mandiri; `cp game.sqlite` ketika WAL aktif bukan backup yang dijamin konsisten.

## G. Troubleshooting cepat

| Gejala | Tindakan |
|---|---|
| Token/config gagal / doctor FAIL | Edit environment lokal; jangan paste token atau raw request URL; restart agar environment baru dibaca |
| 409 conflict | Hentikan poller lain atau service lama; jangan jalankan Docker+systemd dengan token sama |
| 401 unauthorized | Rotasi/perbaiki token di BotFather dan secret lokal; jangan retry token invalid tanpa batas |
| 429 | Backoff/retry_after; kurangi frekuensi. Bot memiliki retry bounded, bukan unlimited throughput |
| 403 blocked | Pengguna memblokir bot; outbox permanent failure tidak diretry terus |
| Grup tidak membaca jawaban | Periksa privacy mode BotFather/permission, bot membership dan apakah jawaban reply pesan bot |
| DB read-only/EACCES | Periksa UID/ownership volume, runtime directory, mode dan systemd ReadWritePaths; jangan chmod 777 |
| DB busy | Satu instance, jangan menjalankan tool write kedua saat game aktif; baca log ringkas dan disk/latency |
| DB schema/integrity FAIL | Stop, simpan evidence, validasi backup; jangan otomatis overwrite/reset progres |
| Gambar/frame hilang | Checkout lengkap dan hash manifest, bukan download aset tak tepercaya saat runtime |
| Progres terlihat kosong setelah update | Periksa DATABASE_PATH dan project/volume Compose sebelum menyimpulkan data hilang |
| Aktif tapi tidak respons | Periksa network/API, konflik polling dan log; proses hidup tidak cukup sebagai health proof |

Tidak ada pemantauan HTTP publik, external alerting atau jaminan SLA yang diam-diam ditambahkan. Integrasikan monitor host/log sesuai kebijakan pengelola tanpa membocorkan token atau data akun.

## Versi 1.2.0

[Laporan dan acceptance](RELEASE_1_2.md). Schema tetap 2; tidak ada penghapusan massal/migrasi destruktif. Informational commands tidak membuat ulang akun setelah delete; aksi permainan/opt-in/saran eksplisit dapat membuat akun baru. Ranking memfilter ID nonpositif dan skor nol tanpa menghapus record lama. Tambahkan uji tombol ▶️/✅ soal, alias/tombol audio, menu saat boss, version dan delete/privacy pada smoke test. Log ARM64/Telegram pengguna adalah bukti 1.1.0, bukan acceptance otomatis untuk rilis ini.
