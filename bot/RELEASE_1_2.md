# Upgrade 1.2.0 — tindak lanjut log Termux dan chat nyata

Tanggal: 15 Oktober 2026. Baseline: `6551919a` (v1.1.0), branch tetap `arena/2926bc24-tebak-gambar-1-44-2l`.

## 1. Bukti dari lampiran pengguna

Lampiran memperlihatkan update 1.0.0 → 1.1.0 berhasil di Debian PRoot **Linux ARM64, Node 22.23.3, npm 11.6.0**: 117 tes lulus, seluruh aset valid, doctor membaca database lama, `getMe/getWebhookInfo` berhasil, tidak ada webhook, dan polling dimulai. Transkrip privat memperlihatkan permainan, daily, selfie, audio, export dan delete. Pengguna juga melaporkan sudah mencoba grup; detail transkrip grup tidak disertakan.

Ini **bukti yang dilaporkan pengguna untuk 1.1.0**, bukan klaim bahwa pengembang menjalankan Telegram/HP itu sendiri atau bahwa 1.2.0 sudah diuji di HP. Log mentah berisi ID, nama dan export akun; **tidak dimasukkan ke Git**. Tes baru memakai data sintetis.

### Yang bukan kegagalan

- Free answer ditolak ketika saldo nol: memang aturan game. Sekarang alasannya lebih spesifik dan menyarankan `/daily`.
- Hint dalam practice tidak tersedia: practice memang tanpa konsumsi hint/skor.
- `/group` di chat privat ditolak: memang harus di grup.
- `/challenge` ditolak ketika ada soal aktif: mencegah penggantian sesi/deadline secara diam-diam. Gunakan `/stop` dahulu.
- Ogg/sticker/foto tidak selalu terlihat sebagai teks dalam salinan chat. Tidak adanya baris teks bukan bukti upload gagal.
- `/start` pada salinan chat dapat berasal dari tombol deep link. Tidak cukup bukti untuk menyatakan parser Telegram salah; regresi bare `/start` setelah deep link sekarang diuji eksplisit.

## 2. Perubahan 1.2.0

| Area | Perubahan dan perilaku yang diharapkan |
|---|---|
| Navigasi | `/menu` selalu menampilkan menu privat tanpa menghentikan sesi atau reset timer. `/start` tanpa argumen tetap onboarding/menu; deep link invalid diberi penjelasan, tidak diam-diam diabaikan. |
| Daftar soal | Label menampilkan `urutan · #nomor gambar` agar shuffle tidak membingungkan. Tombol ▶️ soal saat ini **melanjutkan progress** sehingga jawaban mendapat poin; ✅ soal lama membuka practice; 🔒 tidak membuka soal masa depan. |
| Kompatibilitas tombol | Callback `practice:...` lama tetap didukung. Tombol baru memakai `question:...`; validasi level/soal dan kepemilikan sesi tetap diterapkan. |
| Data setelah delete | `/privacy`, `/help`, `/menu`, `/version`, `/sound`, `/leaderboard`, `/status`, `/export`, `/delete` dan tombol delete lama tidak membuat ulang akun yang dihapus. `/status`/`/export` menjelaskan perlunya `/start`. Aksi permainan/opt-in/saran eksplisit dapat membuat akun baru. |
| Leaderboard/admin | Hanya ID pemain positif dengan skor positif ditampilkan di ranking. Baris sentinel legacy ID 0 dan pemain nol poin tidak mengotori papan skor. Admin menghitung ID positif. Data lama **tidak dihapus otomatis** hanya karena bernama Group atau berskor nol. |
| Audio | `/sound checkpoint`, nama lengkap dan ekstensi `.ogg` didukung, case-insensitive. Menu berisi 11 tombol audio. Pesan berisi beberapa `/sound` ditolak dengan petunjuk satu perintah per pesan. Allowlist tetap menolak URL/path/arbitrary file. Callback audio di-ACK sebelum upload dan hanya privat. |
| Free answer | Pesan berbeda untuk saldo kosong, practice/daily/group, dan raja. Tidak menambah saldo, tidak memotong hint, dan tidak melonggarkan aturan raja. |
| Selfie | Pesan bonus memakai delta hint sebenarnya: misalnya saldo 99 mendapat +1, saldo 100 mendapat +0. Batas reward dan sekali per UTC-day tetap berlaku. |
| Diagnosis | `/version` menampilkan versi paket, Node, platform/arsitektur, 400 soal/20 level dan schema, tanpa token/path home. Command Telegram menyertakan menu/next/cancel/version. |
| Launcher Termux | Generator `termux-launcher.sh` menulis `set -euo pipefail` dan `exec` pada baris terpisah. Ini memperbaiki risiko konkret pada lampiran: `set -e exec ...` bukan menjalankan bot. Generator diuji benar-benar mengeksekusi target, termasuk path spasi. |
| Keamanan launcher | Existing launcher tidak ditimpa tanpa `--replace`; penggantian membuat backup mode 600. Launcher mode 700, temporary dibersihkan, symlink ditolak, publikasi file atomik pada filesystem internal. Tidak memulai bot otomatis. |
| Persiapan | Jika build guard versi terpasang tersedia, prepare memeriksa lock DB dahulu dan menolak instance aktif sebelum npm dijalankan. Ini **probe**, bukan lease yang mengunci seluruh durasi upgrade: operator tetap wajib menjaga bot stop. Format check juga menjadi gate. |
| Tes di PRoot | Katalog valid yang immutable dibagi per file fixture bot, bukan membaca/menghash 400 PNG ulang pada setiap beforeEach. State pemain/session/SQLite tetap baru setiap tes. Belum ada benchmark 1.2.0 di HP; jangan menganggap waktu Linux sebagai estimasi HP. |

**Tetap:** 400 soal/20 level, long polling, checkpoint/lives/score, SQLite schema 1/2, daily, grup, admin, backup, media, privasi dan seluruh perlindungan 1.1.0. Tidak menghubungi backend game lama dan tidak menambah soal 21–64 yang tidak tersedia. Tidak ada migrasi destruktif atau dependency major yang dipaksakan. Arsip Android/audit asli tidak diubah.

## 3. Validasi pengembang

- **145 tes / 8 file**: 41 engine, 34 bot, 20 upgrade sebelumnya, 22 feedback, 6 Termux, 8 media, 3 ekstra, 11 preflight.
- Node 22.22.3 dan minimum 22.13.0 pada Linux x64; lihat JSON hasil dan `data/validation-log.txt`.
- Typecheck source/scripts/tests, Prettier, full PNG/hash validation, build, compiled backup WAL dan doctor offline.
- HTTP demo nyata juga menguji menu/version setelah delete tidak membuat profil, tombol soal kembali ke progress, dan alias audio, selain alur media/grup/isolasi sebelumnya.
- Tes launcher benar-benar menjalankan shell hasil generator; tes prepare memakai proses Node terpisah dan lock SQLite nyata, bukan hanya pencocokan teks script.
- `npm audit` nol temuan saat validasi, bukan jaminan bebas semua kerentanan.

Bukti 1.2.0 Telegram live, ARM64/PRoot, reboot, tmux host, Docker/systemd dan GitHub Actions masih membutuhkan acceptance pengguna. Tidak ada klaim 100% bebas bug atau uptime Android 100%.

## 4. Update sesuai lingkungan pada log Anda

**Jangan membuat user/distro baru.** Lingkungan Anda bernama user `tebak-gambar-bot`, distro `tg-debian`, session `tebak-gambar-bot`.

### A. TERMUX — stop dahulu

```bash
tmux list-sessions
tmux attach-session -t tebak-gambar-bot
```

Tekan Ctrl+C dan tunggu selesai (outbox dapat memakai grace 25 detik). Jika tidak ada session, periksa terminal foreground/proses lain. Jangan menjalankan poller kedua. Jangan force-stop Termux ketika SQLite sedang digunakan.

### B. TERMUX — login

```bash
proot-distro login --user tebak-gambar-bot tg-debian
```

### C. DEBIAN USER — Node dan backup

```bash
export NVM_DIR="$HOME/.nvm"
. "$NVM_DIR/nvm.sh"
nvm use 22
cd "$HOME/Tebak-Gambar-1.44.2l/bot"
umask 077
BACKUP_DIR="$HOME/tg-backups/pre-1.2-$(date -u +%Y%m%dT%H%M%SZ)-$$"
mkdir -p "$BACKUP_DIR"
chmod 700 "$BACKUP_DIR"
npm run backup:compiled -- "$BACKUP_DIR/game.sqlite"
```

**Hanya lanjut jika backup berhasil.** Kemudian:

```bash
cp -p .env "$BACKUP_DIR/bot.env"
chmod 600 "$BACKUP_DIR/bot.env" "$BACKUP_DIR/game.sqlite"
git rev-parse HEAD > "$BACKUP_DIR/old-commit.txt"
printf 'Backup privat: %s\n' "$BACKUP_DIR"
```

Backup env mengandung token; jangan paste/upload. Simpan salinan terenkripsi di luar HP untuk perlindungan uninstall/hilang.

### D. DEBIAN USER — pull dan prepare

```bash
cd "$HOME/Tebak-Gambar-1.44.2l"
git status --short --branch
git branch --show-current
```

Pastikan branch sesi di atas, tinjau perubahan lokal. Jangan reset/clean paksa. Lalu:

```bash
git pull --ff-only origin arena/2926bc24-tebak-gambar-1-44-2l
```

Hanya jika berhasil:

```bash
cd bot
bash deploy/termux-prepare.sh
```

Target 145 tes. Jangan start bila ada kegagalan. `.env` dan runtime tetap dipertahankan; tidak perlu token baru atau menyalin `.env.example` lagi. Jangan start bot di tengah instalasi dependency.

### E. DEBIAN USER — check dan foreground

```bash
bash deploy/termux-run.sh --check-offline
npm run doctor -- --telegram
bash deploy/termux-run.sh
```

Periksa hasil setiap tahap. Setelah event `bot-start`, uji `/version`, `/menu`, `/questions`, `/sound checkpoint`, progres lama dan grup. Setelah pengujian foreground, Ctrl+C sebelum menjalankan tmux.

### F. TERMUX — jalankan langsung tanpa heredoc launcher

Kembali ke Termux dengan `exit` dari Debian. Pastikan session lama sudah berakhir, lalu:

```bash
termux-wake-lock
tmux new-session -d -s tebak-gambar-bot 'proot-distro login --user tebak-gambar-bot tg-debian -- /bin/bash /home/tebak-gambar-bot/Tebak-Gambar-1.44.2l/bot/deploy/termux-run.sh'
tmux attach-session -t tebak-gambar-bot
```

Cara ini langsung memakai script repository dan tidak tergantung launcher lama yang salah baris. Jika `duplicate session`, inspect/attach dahulu, jangan membuat sesi kedua. Detach: Ctrl+B, lepas, D. Session ada bukan bukti API sehat; periksa `bot-start` dan balasan Telegram.

### G. Opsional: perbaiki launcher lama secara otomatis

Jika ingin tetap memakai `~/run-tebak-gambar-bot.sh`, jalankan **di Debian sebagai user bot**, folder `bot/`:

```bash
bash deploy/termux-launcher.sh --replace
```

Generator menyimpan backup launcher lama dan menggantinya. Jangan menjalankan launcher bersamaan dengan proses tmux/foreground yang sudah aktif. Jika memakai Termux:Boot, perbarui script boot agar memanggil jalur langsung pada langkah F; jangan memiliki dua autostart.

## 5. Acceptance ulang 1.2.0

- [ ] `/version` menunjukkan 1.2.0 dan environment Linux ARM64 yang benar.
- [ ] `/menu` saat raja tidak mereset deadline.
- [ ] `/questions` ▶️ memberi mode progress dan skor, ✅ practice tidak memberi skor tambahan, 🔒 tetap terkunci.
- [ ] `/sound checkpoint`, tombol audio, foto, sticker dan export berfungsi pada klien Telegram Anda.
- [ ] `/delete` lalu `/privacy`/`/menu`/`/version` tidak membuat profil; `/start`/aksi permainan dapat membuat akun baru. Uji delete hanya dengan akun uji karena progres benar-benar dihapus.
- [ ] Ranking tidak menampilkan sentinel ID 0 atau akun tanpa poin; data pemain lain tidak terhapus.
- [ ] Grup dengan dua akun masih first-winner dan tidak membocorkan status privat.
- [ ] SIGINT, restart, backup dan outbox normal; tidak ada 409 atau poller ganda.
- [ ] Launcher/boot benar-benar menjaga proses di HP target. Wake-lock/tmux bukan jaminan uptime.
