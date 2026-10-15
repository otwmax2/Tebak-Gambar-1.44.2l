# Bot Telegram Tebak Gambar — TypeScript / Node.js / grammY

Implementasi mandiri sesuai pilihan pengguna: **seluruh 400 soal offline**, **long polling**. Dibangun pada branch sesi yang sama; arsip Android, Smali dan ZIP sumber tidak diubah.

## Upgrade 1.2.0

Tindak lanjut log ARM64/chat dan panduan update sesuai user `tebak-gambar-bot`: **[RELEASE_1_2.md](RELEASE_1_2.md)**. Menambahkan navigasi progress/practice yang jelas, audio alias/tombol, perlindungan akun setelah delete dan generator launcher. Riwayat 1.1.0: **[UPGRADE.md](UPGRADE.md)**. Mencakup perbaikan engine/reward, privasi grup, crash-safe local instance lock, backup, API/shutdown, katalog/media, HTTP demo, formatter dan helper Termux.

## Status yang benar-benar terverifikasi

- Semua 400 gambar/metadata/jawaban dimuat, hash diperiksa dan pixel didekode.
- **145 test lulus**, termasuk walkthrough lengkap 400 soal hingga level 20, handler grammY dengan Bot API mock, database persistence, timer/checkpoint dan media.
- Typecheck source + test dan build TypeScript lulus.
- Demo lokal berjalan dengan handler grammY yang sama; **bukan koneksi Telegram live**.
- `npm audit`: tidak ada vulnerability terlapor pada lockfile saat validasi (bukan jaminan seluruh kode bebas bug).
- Token tidak diberikan kepada pengembang. Pengguna mengirim log **1.1.0**: 117 tes lulus pada Linux ARM64/Node 22.23.3, getMe/getWebhookInfo berhasil dan polling berjalan; pengguna melaporkan uji grup. **1.2.0** diuji lokal dan perlu acceptance ulang di HP. Sandbox tidak mengakses Telegram. Log/export mentah tidak dipublikasikan.
- Docker/systemd/CI disediakan, belum dijalankan sebagai deployment nyata.

Panduan Android tanpa root: **[TERMUX.md](TERMUX.md)** (Debian PRoot + Node 22, langkah awal–akhir).

Panduan operasional produksi: **[PRODUCTION.md](PRODUCTION.md)** (doctor, Docker/systemd, acceptance, backup, upgrade/rollback).

Lihat [FEATURE_PARITY.md](FEATURE_PARITY.md), [VALIDATION.md](VALIDATION.md), [data/repository-map.csv](data/repository-map.csv) untuk cakupan seluruh path repo.

## 1. Prasyarat

- Node.js **22.13+**, diuji dengan **22.22.3 dan minimum 22.13.0 pada Linux x64** (gunakan patch terbaru Node 22 LTS untuk deployment). Modul built-in `node:sqlite` pada Node 22 masih mengeluarkan experimental warning; ini bukan kegagalan test. Jangan gunakan Node 18/20 untuk implementasi ini.
- npm **11.6.0** (dipin melalui packageManager). npm 10.9.8 di sandbox mengalami error `edgesOut` ketika menyelesaikan dependency tree; npm 11.6.0 berhasil.
- Token bot milik pengelola, dibuat melalui BotFather. **Jangan kirim token ke chat, jangan commit `.env`**.
- Seluruh repository tersedia, terutama `audit/decrypted-levels/images/` dan resource frame/audio. Bot tidak dapat dijalankan dari folder `bot/` yang dipisahkan tanpa aset tersebut.
- Hak penggunaan/distribusi aset dari pemilik.

## 2. Mulai di server

Perintah di bagian ini untuk instalasi baru. Instalasi lama: backup/stop dahulu dan ikuti [panduan upgrade](RELEASE_1_2.md#4-update-sesuai-lingkungan-pada-log-anda). Jangan menimpa `.env` lama.

Dari root repository:

```bash
cd bot
npx --yes npm@11.6.0 ci
(umask 077; set -o noclobber; cat .env.example > .env)
chmod 600 .env
```

Edit `.env` secara lokal, masukkan BOT_TOKEN dan ADMIN_IDS bila diperlukan. Jangan menaruh token dalam perintah shell yang tersimpan di history atau screenshot.

```bash
npm run check
npm run doctor
# Pada host pemilik: npm run doctor -- --telegram
npm start
```

Alternatif pengembangan:

```bash
npm run dev
```

`npm start` memakai JavaScript hasil build di `dist/src/index.js`, bukan transpiler runtime. Application root dan path aset diselesaikan relatif terhadap folder `bot/`, bukan current working directory.

Pada startup bot:

1. Memvalidasi konfigurasi, preflight storage/schema/media dan 400 SHA-256 aset sebelum menghubungi Telegram.
2. Membuka/migrasikan SQLite, WAL + foreign keys + busy timeout.
3. Memanggil getMe dan menghapus webhook **tanpa drop pending updates** agar long polling dapat bekerja.
4. Memasang menu perintah Bot API.
5. Menjalankan scheduler/outbox dan long polling.

**Satu proses produksi saja untuk satu token/database.** Menjalankan dua poller token yang sama menghasilkan konflik Telegram 409. Ini bukan deployment terdistribusi/multi-instance.

## 3. Pengaturan BotFather

- Atur nama/deskripsi/foto bot sesuai hak merek pengelola.
- Izinkan bot bergabung ke grup jika memakai `/group`.
- Agar bot menerima jawaban teks biasa di grup, nonaktifkan group privacy melalui pengaturan BotFather atau jadikan bot admin dengan permission yang diperlukan. Tanpa itu, bot dapat hanya menerima command/reply tertentu.
- Aktifkan inline mode jika ingin inline sharing; fitur ini opsional.
- Menu command diatur otomatis saat startup; tidak perlu menyalin seluruh command manual.
- Tidak perlu domain/webhook untuk mode pilihan ini.

## 4. Demo tanpa token

```bash
npm run demo
```

Untuk pemeriksaan HTTP otomatis (demo tetap berjalan di terminal/proses lain): `npm run demo:test`.

Buka port 3000 / Live Preview. Server bind `0.0.0.0`; browser memakai URL relatif, tidak menghubungi localhost sandbox secara langsung.

Demo:
- Menggunakan handler grammY dan engine yang sama, seluruh request Telegram dimock lokal.
- Identitas browser simulasi melalui cookie HttpOnly; database in-memory.
- Menggunakan urutan soal deterministik agar demonstrasi mudah, sedangkan default produksi shuffle.
- Mendukung command, inline button, soal gambar, jawaban, grup, selfie upload, stiker dan export.
- Media output demo dibatasi ke pemilik cookie, bukan endpoint ekspor publik.
- Maksimum 500 visitor/session in-memory; media lama dapat kedaluwarsa.
- Tidak boleh dipakai sebagai antarmuka produksi atau dianggap web login Telegram. Data demo hilang saat server restart.

## 5. Perintah

| Perintah | Fungsi |
|---|---|
| `/start` | Onboarding/menu, login menggunakan identitas Telegram |
| `/play [level]`, `/next` | Mulai/lanjut progres pribadi |
| `/levels`, `/level` | 20 level dengan status lock |
| `/questions` | Urutan 20 soal dalam level aktif |
| teks biasa | Jawaban untuk sesi aktif; dapat reply gambar |
| `/hint` | Membuka satu huruf; satu kredit, soal biasa/progres privat |
| `/freeanswer` | Menghabiskan satu saldo, membuka jawaban/progres, tanpa poin |
| `/status` | Nyawa, refill, hint, free answer, progres, checkpoint, score |
| `/daily` | Hadiah harian UTC: default +2 hint, +1 free answer (max saldo 3) |
| `/challenge` | Soal harian deterministik, +5 poin sekali per hari; tidak mengubah progres |
| `/practice [nomor 1–400]` | Soal yang sudah terbuka, tanpa penalti/score |
| `/group` | Kuis bersama 120 detik di grup, jawaban benar pertama menang |
| `/stop` | Hentikan sesi; raja progres berpenalti satu nyawa |
| `/leaderboard` | 10 pemain terbaik berdasarkan score lokal |
| `/achievements` | Milestone dan jumlah soal unik yang selesai |
| `/quote` | Quote asli level aktif |
| `/selfie [level]`, `/frame` | Foto berframe asli level ganjil terbuka 1–19, reward sekali sehari |
| photo Telegram | Setelah `/selfie`, download official getFile, frame di memori, kirim hasil |
| `/cancel` | Batal menunggu foto |
| `/sticker` | WebP gambar soal aktif dalam batas ukuran Telegram |
| `/share` | Kirim gambar tantangan dan deep link bot |
| `/sound [nama]` | Daftar/unduh 11 sound asli sebagai Ogg document; playback tergantung klien |
| `/suggest ide`, `/feedback` | Inbox ide lokal (maksimum 5 per hari, 2.000 karakter) |
| `/reminders on\|off` | Opt-in nyawa penuh **dan pengumuman admin**, default OFF |
| `/export` | JSON data pemilik akun, private only |
| `/delete`, `/reset` | Hapus akun/progres setelah konfirmasi ber-nonce 60 detik |
| `/help`, `/howto` | Aturan lengkap |
| `/privacy` | Data yang disimpan dan pengelolaan privasi |
| `/admin` | Statistik untuk ADMIN_IDS, private only |
| `/suggestions` | 10 ide terakhir, admin only |
| `/broadcast teks` | Antrean pengumuman hanya untuk pengguna opt-in, admin only |

## 6. Aturan permainan

### Konten dan identitas

400 global index **0–399** pada sumber ditampilkan sebagai nomor **1–400** pada bot. Ada 370 gambar biasa (400×400), 30 raja (400×480), 20 level × 20 soal.

- Level 1–10: 19 biasa + raja terakhir.
- Level 11–20: 18 biasa + raja checkpoint posisi 10 + raja terakhir.
- Default shuffle mengacak soal biasa **dalam level**, mempertahankan slot raja/checkpoint; urutan disimpan di SQLite.
- Level dibuka setelah level sebelumnya selesai, tidak dengan menerima nilai callback dari klien.
- Latihan hanya dapat mengakses soal yang sudah terbuka, bukan semua soal di level yang baru dibuka.

### Jawaban dan nyawa

Normalisasi NFKC, lowercase locale Indonesia, buang whitespace. Ini perluasan Unicode dari helper Android yang hanya menghapus spasi ASCII. Edit distance 0 = benar; 1–2 = hampir benar tanpa penalti; lebih dari 2 = salah.

- Default 5 nyawa, refill satu nyawa per 600 detik. **600 detik adalah fallback aktual** konstanta AuthenticationTokenClaims pada kode Android yang diperiksa, bukan asumsi satu jam.
- Jam mundur tidak memberi refill negatif/bonus.
- Raja progres default 60 detik, deadline tersimpan lintas restart dan tidak di-reset oleh `/play` ulang.
- Stop raja mengurangi nyawa agar timer tidak dapat di-reset gratis.
- Nyawa habis → sesi selesai dan posisi kembali checkpoint (0 atau 10); refill tetap menunggu waktu, tidak otomatis memberi 5 nyawa gratis seperti beberapa cabang Android.
- Hint yang dibayar tetap tersimpan saat stop/restart soal biasa, dibersihkan saat benar.

Timer dimulai saat server membuat attempt. Latensi upload/rate limit Telegram ikut mengurangi waktu tersisa; bila deployment sering mengalami antrian tinggi, naikkan BOSS_SECONDS. Ini bukan timer lokal Android yang identik.

### Poin/reward

- Progres benar: 10 biasa / 30 raja, **sekali per soal per akun**.
- Free answer: 0 poin, saldo berkurang secara atomik.
- Latihan: 0 poin, tidak mengurangi nyawa.
- Challenge: 5 poin sekali per hari UTC.
- Grup: 5 poin sekali per pengguna/soal/hari, winner tunggal per sesi.
- Hadiah daily dan selfie dibatasi UTC-day, hint maksimum 100/level, free answer maksimum 3.

Ini permainan kasual. Jawaban sudah dipublikasikan dalam repo atas permintaan pengguna sebelumnya; tidak boleh diklaim anti-cheat kuat atau dipakai sebagai bukti reward bernilai finansial.

## 7. Konfigurasi

Lihat `.env.example`. Nilai integer dan boolean divalidasi saat startup.

| Variable | Default |
|---|---|
| BOT_TOKEN | wajib untuk produksi; tidak dipakai demo |
| ADMIN_IDS | kosong; user ID angka positif dipisah koma |
| DATABASE_PATH | `./runtime/game.sqlite` |
| ASSET_ROOT | `../audit/decrypted-levels` |
| MAX_LIVES | 5 |
| LIFE_REFILL_SECONDS | 600 |
| INITIAL_HINTS | 5/level |
| BOSS_SECONDS | 60 |
| DAILY_HINT_REWARD / DAILY_FREE_ANSWERS | 2 / 1 |
| SHUFFLE_QUESTIONS | true |
| RATE_LIMIT_MS | 750 per chat/user |
| REMINDER_INTERVAL_SECONDS | 30 |
| PHOTO_MAX_BYTES | 5 MiB |

Scheduler memakai outbox SQLite. Pengingat opt-in nyawa penuh dan timeout dapat terlambat sebesar interval scheduler, bukan notifikasi real-time presisi. Job diretry dengan backoff, menghormati retry_after 429; kegagalan permanen 400/403 atau batas retry menghapus job. Foto selfie hanya diproses di memori, maksimum 20 juta pixel input. Database/file backup mengandung data pribadi: simpan di path khusus dengan akses terbatas.

## 8. Docker

Dari root repo:

```bash
docker compose -f bot/compose.yaml up -d --build
docker compose -f bot/compose.yaml logs -f
docker compose -f bot/compose.yaml down
```

Siapkan `bot/.env` dahulu. Tidak ada port produksi yang diekspos; volume `game-data` mempertahankan SQLite. Dockerfile mengikutkan hanya bot, 400 PNG, frame dan audio yang dibutuhkan, bukan ribuan SDK decompile/credential OAuth Android. Jalankan satu replica.

Dockerfile/compose tersedia tetapi image belum dibangun di sandbox. Validasi actual build dan izin volume pada host deployment sebelum rilis. Jangan memakai `down -v` jika ingin menjaga progres.

## 9. systemd alternatif

Contoh `deploy/tebak-gambar.service` mengasumsikan repo di `/opt/tebak-gambar` dan akun sistem `tebakgambar`. Buat runtime directory milik akun itu dengan mode 700. Simpan environment di `/etc/tebak-gambar.env`, mode 600, dikelola admin host. Sesuaikan path binary Node, ownership, dan ReadWritePaths sebelum enable service.

Tidak dijalankan di sandbox; jangan menyalin tanpa memeriksa lingkungan host.

## 10. Backup dan restore

```bash
npm run backup -- /secure/backups/game-2026-10-15.sqlite
# Instalasi tanpa devDependencies:
npm run backup:compiled -- /secure/backups/game-2026-10-15.sqlite
```

Memakai `VACUUM INTO` untuk snapshot SQLite konsisten, termasuk data WAL; tujuan harus baru dan bukan DB aktif. Backup tidak menyertakan token. Untuk restore: hentikan bot, salin snapshot ke DATABASE_PATH dengan ownership/mode tepat, buang WAL/SHM **lama setelah bot berhenti**, lalu start dan periksa `/status`.

Backup adalah tindakan administrator, bukan `/import` JSON arbitrer dari pengguna. JSON export pengguna tidak dipercaya untuk menaikkan skor/level. Tidak ada restore cloud Firebase atau sinkronisasi akun Android lama.

## 11. Arsitektur dan keamanan

- `config.ts`: environment, numeric validation, portable paths.
- `catalog.ts`: manifest, 400 asset hash checks, bounded path, shuffling slots.
- `store.ts`: schema/migrations 1–2, synchronous transactions, WAL, FK cascade.
- `engine.ts`: state/reward/progres tanpa Telegram network dependency.
- `bot.ts`: command, callback ownership+nonce, optional Telegram API auto-retry, reminders/outbox.
- `media.ts`: frame/sticker serta official Telegram file download; menolak path traversal/URL input.
- `index.ts`: produksi long polling, signal shutdown, menolak database in-memory.
- `preflight.ts` + `scripts/doctor.ts`: readiness lokal dan probe read-only Telegram opt-in.
- `mock-telegram.ts`, `demo.ts`: hanya simulator/test; **tidak diimpor entrypoint produksi**.

SQL memakai parameter binding. Token tidak masuk SQLite, export, log atau source. Error log hanya event/type/update ID, tidak payload chat atau URL berkunci. File game lama tidak dieksekusi. Tidak menanam rahasia OAuth hasil audit dalam bot. Retry request API dibatasi; update ID dideduplikasi selama 24 jam. Dedup marker ditulis sebelum handler, sehingga crash di tengah handler bisa membuat sebagian respons tidak terkirim; gunakan `/status`/`/play` untuk pemulihan. Ini bukan transaksi exactly-once lintas jaringan Telegram.

Polling handler diproses berurutan; engine critical section tidak memiliki await. SQLite cocok untuk bot single-process skala kecil/menengah. Tidak diklaim load-test multi-ribuan pengguna, multi-host, jaminan delivery exactly-once, atau bebas semua bug.

## 12. Pengujian dan pemeliharaan

```bash
npm run check
npm audit --audit-level=low
npm run backup:test
npm run coverage:repo
```

117 test mencakup 41 engine, 22 handler grammY, 6 media, 3 kasus tambahan dan 11 preflight produksi. Template GitHub Actions tersedia di `deploy/telegram-bot.workflow.yml`, belum aktif. Untuk mengaktifkan, pengelola dengan izin workflows perlu menyalinnya ke `.github/workflows/telegram-bot.yml`; koneksi GitHub sesi ini tidak memiliki izin tersebut. Hasil remote CI belum diuji. Semua test menggunakan token dummy + mock transport, tidak pernah mencoba credential Android atau Bot API produksi.

Sebelum membuka bot publik: uji getMe/start/stop, command/callback, grup dengan setting privacy, foto/stiker/audio, permission admin, notifikasi opt-in, restart/progres, 429/403 dan backup/restore pada environment pemilik. BotFather token masih diperlukan — implementasi lokal tidak bisa menggantikan itu.
