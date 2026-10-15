# Upgrade 1.1.0 — audit, perbaikan, dan prosedur penerapan

Tanggal: 15 Oktober 2026. Baseline: commit `420bb4b088d04d8717221039b3ebf3502e41e0d6` pada branch `arena/2926bc24-tebak-gambar-1-44-2l`.

## 1. Cakupan yang dipertahankan

Ini peningkatan **bot TypeScript/Node.js + grammY offline-full, long polling**, bukan port seluruh SDK Android atau pengaktifan kembali backend aplikasi lama. Tetap tersedia 400 soal lokal, 20 level, 370 soal biasa/30 raja, gambar, frame, audio, progres SQLite, permainan privat/grup, hadiah harian, latihan/tantangan, admin, pengingat opt-in, ekspor dan penghapusan data. Soal level 21–64 tidak tersedia dalam aset lokal; tidak dibuat-buat. Arsip/Java/Smali dan aset asli dipertahankan.

Tidak ada klaim bebas bug 100%, uptime Android 100%, atau deployment Telegram nyata. Bukti lokal dan acceptance nyata dipisahkan di bawah.

## 2. Perubahan konkret

| Komponen | Perbaikan | Lokasi/bukti utama |
|---|---|---|
| Engine/progres | Latihan soal yang pernah selesai tetap dapat digunakan setelah rollback checkpoint; validasi mode/chat; frame wajib ganjil 1–19 dan sudah terbuka | `src/engine.ts`, `tests/upgrade.test.ts` |
| Reward/waktu | Daily/selfie tidak dapat diklaim ulang ketika jam mundur; pesan reward menampilkan delta aktual setelah cap; kebijakan UTC tetap berlaku | Tes clock rollback dan batas inventori |
| Grup/privasi | Status, achievements, quote dan pembatalan selfie bersifat privat; tombol status personal di grup dihapus; identitas bot diabaikan | `tests/bot.test.ts` |
| Callback/update | Grammar dan nonce ketat, maksimum 64 byte; ACK sebelum pemrosesan berat dan tidak dua kali; dedup sebelum rate slot; rate limiter pulih ketika jam mundur; konfirmasi delete kedaluwarsa/dibatasi | Tes handler grammY mock |
| SQLite | Tolak schema masa depan sebelum perubahan; tutup konstruktor gagal; transaction wajib sinkron, thenable di-rollback; indeks query sesi/job/saran/update; close idempotent | `src/store.ts`, 20 tes upgrade |
| Singleton lokal | Lock SQLite terpisah di path DB kanonik, termasuk alias direktori symlink; dilepas saat exit/crash tanpa menghapus file lock | `src/instance-lock.ts`; tes proses anak benar-benar di-SIGKILL |
| Backup | Sumber read-only; target dibuat eksklusif mode 600 sebelum VACUUM; tidak overwrite; quick_check; kegagalan hanya membersihkan output miliknya | `src/backup.ts`, `backup:test` dan tes unit |
| Katalog/aset | Validasi level/slot raja/ukuran jawaban/path PNG/hash; realpath gambar tidak boleh keluar dari asset root | `src/catalog.ts`, verifikasi seluruh 400 gambar |
| Foto/media | JPEG/PNG/WebP saja, validasi magic sebelum decoder; download dibatasi dan reader selalu dilepas; SVG ditolak | 8 tes media termasuk seluruh frame |
| API/lifecycle | `API_TIMEOUT_SECONDS=45` (35–120); HTTP error tidak masuk loop retry jaringan tak terbatas plugin; request biasa/init dapat dibatalkan; scheduler idempotent; runtime yang ditutup tidak dapat restart | `src/bot.ts`, `src/index.ts`; tes pembatalan dan retry |
| Outbox/shutdown | Tidak mulai job baru saat close; job in-flight diberi 25 detik lalu dibatalkan; job tetap pending jika shutdown; hapus setelah kegagalan ke-5, bukan ke-6 | Tes outbox dan virtual clock |
| Demo HTTP | Tolak Origin asing/content-type non-JSON; validasi payload/base64; maksimum 8 API request pending; buffer foto dibersihkan walaupun input gagal; cookie HTTPS Secure/None/Partitioned | `src/demo.ts`, `demo:test` |
| Tooling/Termux | Versi paket 1.1.0, dependency terkunci, Prettier, format gate, tes mobile satu worker, helper persiapan/launcher Debian (diuji pada fixture Linux: .env/runtime/progres lama tetap utuh) | `package.json`, `deploy/termux-*.sh` |

### Kebijakan shutdown

SIGINT/SIGTERM membatalkan request API biasa/init dan menghentikan polling baru. Outbox yang sudah mengirim menggunakan signal terpisah dan dapat selesai dalam grace 25 detik. Tidak ada job baru dimulai. Database ditutup setelah loop polling/outbox selesai, kemudian lock dilepas. Ini bukan janji setiap pekerjaan CPU native selesai dalam 25 detik: supervisor masih boleh melakukan forced stop setelah batas host. Reply Telegram yang terputus saat stop tidak dijamin terkirim; progres transaksi yang sudah committed diperiksa kembali dengan `/status`/`/play`. Outbox tetap **at-least-once**, bukan exactly-once delivery Telegram.

## 3. Bukti validasi

- **117/117 tes**, 6 file: 41 engine, 34 bot, 20 upgrade, 8 media, 3 ekstra, 11 preflight.
- Suite yang sama dijalankan pada **Node 22.22.3 dan minimum 22.13.0, Linux x64**. Tes SIGKILL memakai proses OS nyata; timeout shutdown memakai virtual clock. Ini tidak membuktikan semua platform/arsitektur telah diuji.
- Typecheck source/scripts/tests, formatter dan build JavaScript.
- 400 SHA-256, metadata PNG dan decode seluruh pixel; walkthrough 400 soal sampai skor 4600/tamat level 20.
- Backup integration memakai CLI hasil build pada database WAL aktif, termasuk permission 600 dan penolakan overwrite.
- HTTP demo nyata terhadap server lokal: onboarding, hint/callback, PNG, jawaban, WebP, Ogg, selfie, export, group winner, delete/recreate, isolasi media antar-cookie, Origin/content-type dan cookie HTTPS.
- `npm audit` memeriksa dependency lockfile pada waktu validasi; nol temuan bukan bukti semua kode aman.
- Detail/log: [VALIDATION.md](VALIDATION.md), `data/validation-log.txt`, `data/test-results.json`, `data/test-results-node22-min.json`, `data/npm-audit.json`.

**Belum diuji nyata:** Telegram live/token, HP Android/PRoot, reboot/boot script, deployment Docker/systemd, GitHub Actions dan pemulihan produksi. Tidak ada token diminta/disimpan di chat. Gunakan Node 22 LTS **patch terbaru**, bukan sengaja memilih 22.13.0 yang dipakai hanya untuk bukti kompatibilitas minimum.

## 4. Upgrade instalasi yang sudah ada

1. Catat revision sekarang dan buat backup konsisten ke direktori privat di luar checkout (lihat runbook). Pastikan backup berhasil; jangan hanya menyalin DB yang sedang WAL aktif.
2. Stop proses bot lama secara normal; periksa tmux/systemd/Docker sesuai instalasi. Jangan jalankan dua poller dengan token yang sama.
3. Di checkout lengkap, pastikan berada pada branch sesi dan tidak ada perubahan lokal yang akan tertimpa. Jangan gunakan reset/clean paksa.

```bash
# Folder repository, bukan bot/; pastikan branch sesuai sebelum pull.
git status --short --branch
git pull --ff-only origin arena/2926bc24-tebak-gambar-1-44-2l
cd bot
npm ci
npm run check
npm run backup:test
npm run doctor:offline
```

4. Pertahankan `.env` dan database runtime lama. `API_TIMEOUT_SECONDS` opsional, default 45; tidak perlu membuat token baru. Schema tetap versi 1/2; indeks baru ditambahkan idempotent saat startup.
5. Di host sendiri dengan HTTPS Telegram, jalankan `npm run doctor -- --telegram`. Hasil lokal/offline bukan pengganti langkah ini. Jangan paste output sensitif/library debug.
6. Start **satu** instance dengan `npm start` atau launcher layanan yang sudah dipilih. Uji `/status`, `/play`, `/daily`, foto dan kuis grup dengan dua akun; ikuti `deploy/RELEASE_CHECKLIST.md`.
7. Untuk rollback/restore, stop dahulu, periksa kompatibilitas schema, simpan DB+WAL/SHM lama, lalu ikuti [PRODUCTION.md](PRODUCTION.md#f-upgrade-rollback-dan-restore). Restore backup akan kehilangan perubahan setelah snapshot.

## 5. Termux: helper tanpa instalasi tersembunyi saat startup

Tetap ikuti [TERMUX.md](TERMUX.md) untuk APK resmi, Debian, user, NVM/Node dan clone. Helper berikut dijalankan **di dalam Debian sebagai user tebak**, bukan shell Termux Android native:

```bash
cd ~/Tebak-Gambar-1.44.2l/bot
# Persiapan pertama, atau setelah bot lama stop dan backup aman:
bash deploy/termux-prepare.sh
# Edit .env secara privat; tidak pernah overwrite konfigurasi yang sudah ada.
nano .env
bash deploy/termux-run.sh --check-offline
# Probe Telegram eksplisit di HP sendiri:
npm run doctor -- --telegram
# Foreground / dipanggil launcher tmux:
bash deploy/termux-run.sh
```

Prepare memasang dependency dari registry melalui npm 11.6.0, memvalidasi aset, menjalankan tes mobile, build dan doctor offline. Ia **tidak** memasang APK/PRoot/Node, menghapus database, mengubah token, menghubungi Telegram atau menjamin instalasi berhasil di setiap HP. Launcher hanya mengaktifkan NVM 22 bila tersedia dan menjalankan build; tidak melakukan npm install/git pull otomatis. Jangan menjalankan prepare pada bot yang masih aktif. Script menolak `.env`/runtime berupa symlink agar tidak mengubah permission target di luar lokasi yang dimaksud.

## 6. Aturan operasional penting

- Lock berada pada `DATABASE_PATH + .instance.sqlite` setelah resolusi path kanonik. **Jangan hapus, ganti atau rotasi file lock ketika ada proses yang mungkin memakainya.** File yang tetap ada setelah stop bukan lock stale; SQLite melepaskan lock kernel ketika proses mati.
- Symlink DB dangling ditolak agar path alias tidak membuat lock berbeda. Release lama tanpa guard tidak terdeteksi; stop manual sebelum upgrade wajib. Guard hanya melindungi DB/path yang sama pada filesystem lokal. Ia tidak mencegah token sama dipakai di server lain, DB berbeda, network filesystem, atau operator yang mengganti file lock. 409 tetap harus ditangani dengan menghentikan poller/webhook lain.
- Simpan runtime di filesystem privat/internal, bukan `/sdcard`/NFS. Satu service account; directory 700, DB/backup/env 600. Jangan chmod 777.
- Sinkronkan jam. Perlindungan rollback tidak memperbaiki waktu host: jam yang keliru jauh ke masa depan bisa menunda hadiah sampai tanggal UTC yang tersimpan terlewati. Jangan mengedit saldo/tanggal SQL tanpa backup dan peninjauan.
- Kirim selfie sebagai **foto**, bukan document; dukungan decoder dibatasi JPEG/PNG/WebP. Foto mentah tidak dipersistenkan oleh bot, tetapi Telegram mempunyai penyimpanan/policy sendiri.
- Demo adalah simulator beridentitas cookie, bukan API produksi terautentikasi. Jika iframe browser memblokir cookie pihak ketiga, buka preview di tab baru. Pengujian HTTP tidak menggantikan pengujian browser/klien Telegram nyata.
- Android bisa menghentikan tmux/PRoot meskipun wake-lock aktif. Untuk uptime layanan yang penting gunakan host Linux persisten dan monitoring operator.
