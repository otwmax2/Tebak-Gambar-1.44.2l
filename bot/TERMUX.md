# Menjalankan bot di Termux — dari awal sampai selesai

## Pilihan yang disarankan

**Termux → Debian via proot-distro → Node.js 22 → bot grammY.** Tanpa root Android.

Jangan memasang dependency bot langsung di lingkungan native Termux: bot memakai `node:sqlite` dan Sharp, sedangkan native Termux memakai Android/Bionic. Debian memberi lingkungan Linux/glibc yang sesuai dengan binary Node/Sharp. Panduan ini berfokus pada perangkat **64-bit ARM64 (`aarch64`) atau x86_64**, bukan menjanjikan support semua HP 32-bit.

**Batas bukti:** kode bot memiliki 117 test lulus di sandbox Linux. Flag test hemat worker di bawah juga diuji di sandbox. Instalasi PRoot/Termux dan koneksi Telegram **belum diuji pada HP pengguna**. PRoot bukan VM/sekuriti container penuh, dan Android dapat menghentikan proses background; jangan menganggap HP sebagai server 24/7 dengan SLA.

Perintah dibagi berdasarkan tempatnya: **TERMUX**, **DEBIAN ROOT**, atau **DEBIAN USER tebak**. Jangan menukar `pkg` dan `apt`.

## 1. Persiapan HP dan Termux

- Pakai Termux dari [F-Droid](https://f-droid.org/en/packages/com.termux/) atau [release resmi GitHub](https://github.com/termux/termux-app/releases).
- Jangan mencampur APK Termux/plugin dari sumber/signature berbeda. Panduan ini mengikuti distribusi F-Droid/GitHub; build Play Store memiliki perbedaan.
- Siapkan internet, ruang internal yang cukup (disarankan sekitar 3 GB kosong), serta RAM memadai. Penggunaan aktual bergantung perangkat/dependency.
- Atur tanggal/jam otomatis HP.
- Di pengaturan Android, izinkan Termux berjalan di background dan pilih baterai **Unrestricted/Tidak dibatasi** bila tersedia. Jangan force-stop atau hapus data Termux.
- Simpan repository dan SQLite di internal aplikasi, **bukan `/sdcard`/folder Download**. Shared storage tidak cocok untuk permission, executable dan lock SQLite.

Buka **TERMUX**:

```bash
pkg update -y
pkg upgrade -y
pkg install git curl ca-certificates proot-distro tmux -y
uname -m
proot-distro install --help
```

`aarch64` biasanya ARM64. Jika perangkat/Termux 32-bit, jangan memaksa install binary ARM64; kompatibilitas perlu diperiksa lebih lanjut.

## 2. Install Debian

**TERMUX**, pilih salah satu sesuai help versi proot-distro:

### Versi baru dengan Docker/OCI image dan `--name`

```bash
proot-distro install debian:bookworm --name tg-debian
```

Ini menarik rootfs Debian dari image resmi; **tidak memerlukan Docker daemon**.

### Versi lama dengan alias distro dan `--override-alias`

Jika versi Anda tidak mengenali image bertag atau opsi `--name`:

```bash
proot-distro install --override-alias tg-debian debian
```

Jangan menjalankan kedua instalasi untuk nama yang sama. Jika distro sudah terpasang, cukup login; jangan reset/remove karena dapat menghapus data.

```bash
proot-distro list
proot-distro login tg-debian
```

Sekarang terminal berada di **DEBIAN ROOT**. Root ini emulasi PRoot, bukan izin root Android.

## 3. Siapkan Debian dan user bot

**DEBIAN ROOT**:

```bash
apt update
apt upgrade -y
apt install ca-certificates curl git xz-utils nano passwd age -y
useradd -m -s /bin/bash tebak
exit
```

`useradd` dilakukan sekali saja. Bila akun sudah ada, jangan membuat ulang. Password Linux tidak diperlukan untuk login PRoot melalui opsi user.

Kembali ke **TERMUX**:

```bash
proot-distro login --user tebak tg-debian
```

Sekarang **DEBIAN USER tebak**. Verifikasi:

```bash
whoami
printf '%s\n' "$HOME"
dpkg --print-architecture
```

Harapan: user `tebak`, home `/home/tebak`, arsitektur Debian `arm64` atau `amd64`. Semua langkah instalasi Node/repo berikut dijalankan sebagai user ini.

## 4. Install Node.js 22 melalui NVM

**DEBIAN USER tebak**:

```bash
git clone --depth 1 --branch v0.40.8 https://github.com/nvm-sh/nvm.git "$HOME/.nvm"
export NVM_DIR="$HOME/.nvm"
. "$NVM_DIR/nvm.sh"
nvm install 22
nvm alias default 22
nvm use 22
npm install --global npm@11.6.0
```

Jika `.nvm` sudah ada, cukup source `nvm.sh` dan lanjutkan; jangan menimpa/menghapus instalasi lama secara membabi buta. NVM akan mengunduh binary Node Linux dari nodejs.org pada perangkat ini; pastikan jaringan mengizinkan.

Agar NVM tersedia saat membuka shell baru, tambahkan **sekali**:

```bash
cat >> "$HOME/.bashrc" <<'EOF'
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"
EOF
```

Verifikasi:

```bash
node -v
npm -v
node -p "process.platform + ' ' + process.arch"
node -e "require('node:sqlite'); console.log('SQLite tersedia')"
```

Target: Node `v22.x` **22.13+**, npm `11.6.0`, platform `linux arm64` atau `linux x64`. ExperimentalWarning SQLite pada Node 22 bukan kegagalan. Jika platform tertulis `android`, Anda berada di Termux native, bukan Debian: hentikan dan login Debian yang benar.

Jangan menggunakan `apt install nodejs` versi distro tanpa memeriksa versinya; Node 18/20 tidak memenuhi kebutuhan implementasi ini.

## 5. Clone seluruh repository dan install dependency

**DEBIAN USER tebak**:

```bash
cd "$HOME"
git clone --branch arena/2926bc24-tebak-gambar-1-44-2l --single-branch https://github.com/otwmax2/Tebak-Gambar-1.44.2l.git
cd Tebak-Gambar-1.44.2l/bot
npm ci
mkdir -p runtime
chmod 700 runtime
```

Repository publik tidak membutuhkan token/password GitHub untuk clone HTTPS. Jika folder repo sudah ada, jangan hapus: periksa branch dan update sesuai bagian 13.

Jangan mengambil `node_modules` dari PC/Termux native; binary Sharp harus dipasang di lingkungan Debian/arsitektur HP ini. Jangan menonaktifkan optional dependencies (`--omit=optional`) karena binary Sharp memakai package optional.

Verifikasi media:

```bash
node --input-type=module -e "import sharp from 'sharp'; console.log('Sharp:', sharp.versions.sharp)"
```

## 6. Verifikasi kode dan build (hemat proses HP)

Masih di **DEBIAN USER tebak**, folder `~/Tebak-Gambar-1.44.2l/bot`:

```bash
npm run typecheck
npm run assets:verify
npm run test:mobile
npm run build
npm run doctor:offline
```

Test dibatasi satu worker dan timeout 60 detik per test untuk mengurangi beban/risiko Android phantom-process limit. Jangan menafsirkan timeout/test failure sebagai sukses; catat error yang telah disensor. Target suite saat panduan dibuat: **117 test**, seluruh **400 gambar/20 level** tervalidasi.

`doctor:offline` tidak mengakses Telegram. Warning BOT_TOKEN/ADMIN_IDS kosong wajar sebelum konfigurasi. Tidak adanya FAIL lokal bukan bukti bot sudah online.

## 7. Buat bot Telegram dan isi `.env`

Di aplikasi Telegram, buka **@BotFather resmi**, gunakan `/newbot`, pilih nama dan username sesuai instruksinya. Token yang diberikan adalah rahasia milik pengelola.

**Jangan memakai password ZIP/key OAuth/Firebase dari arsip Android sebagai BOT_TOKEN.** Token Telegram harus berasal dari BotFather.

**DEBIAN USER tebak**, di folder `bot/`:

```bash
cp .env.example .env
chmod 600 .env
nano .env
```

`cp` di atas hanya saat pertama kali. Jika `.env` sudah berisi token, jangan menimpanya saat update.

Edit baris pada **file**, bukan ketik sebagai perintah terminal:

```dotenv
BOT_TOKEN=ISI_TOKEN_DARI_BOTFATHER_DI_SINI
ADMIN_IDS=
DATABASE_PATH=./runtime/game.sqlite
ASSET_ROOT=../audit/decrypted-levels
```

Isi token sebenarnya hanya secara lokal. Placeholder di atas harus diganti; biarkan setting lain dari `.env.example` jika belum perlu mengubah. SQLite persisten wajib: jangan set `DATABASE_PATH=:memory:`.

Nano: **Ctrl+O**, Enter untuk simpan, **Ctrl+X** untuk keluar. Di Termux dapat memakai tombol CTRL pada bar keyboard/extra keys. Jangan screenshot file/token atau paste ke chat, GitHub issue, `echo` shell history, `env`/`printenv`, atau log publik.

ADMIN_IDS boleh kosong untuk mulai bermain; fitur admin saat itu tidak tersedia. Cara mengambil ID akun sendiri tanpa bot pihak ketiga dijelaskan di bagian 9.

## 8. Periksa Telegram dan mulai pertama kali

**DEBIAN USER tebak**, folder `bot/`:

```bash
npm run doctor
npm run doctor -- --telegram
npm start
```

- `doctor` default memeriksa konfigurasi lokal dan storage/schema.
- `--telegram` melakukan **getMe/getWebhookInfo read-only**, tidak memulai polling atau mengubah webhook.
- `npm start` menjalankan compiled entrypoint, memeriksa readiness, menghapus webhook tanpa drop updates, memasang command, lalu polling.

Pastikan **hanya satu instance** memakai token ini: hentikan bot di VPS/PC/sesi lain jika ada. Jika doctor melaporkan webhook aktif, hentikan deployment lama dahulu. Jangan berulang kali mencoba poller kedua.

Jika startup berhasil, aplikasi mengeluarkan event `bot-start`. Token tidak dicetak oleh log aplikasi. **Biarkan proses berjalan**, lalu buka Telegram untuk menguji bot.

## 9. Uji penggunaan dan admin

Di chat privat bot:

```text
/start
/play
/status
/daily
/selfie
/sticker
/sound
/export
```

Jawab sesuai gambar yang tampil. Default produksi mengacak soal biasa, jadi soal pertama belum tentu “jambu batu”. `/sticker` memerlukan sesi soal aktif; kirim foto setelah `/selfie`.

Admin opsional:

1. Jalankan `/export` pada akun Telegram pengelola, unduh JSON pribadi.
2. Lihat angka `player.id` — itu ID akun, bukan username/chat grup.
3. Di terminal bot tekan **Ctrl+C**, edit `nano .env`.
4. Isi `ADMIN_IDS=angka_id_kamu`, simpan, lalu jalankan lagi.
5. Uji `/admin`. Jangan membagikan file export lengkap untuk sekadar menunjukkan ID.

Untuk kuis grup, tambahkan bot ke grup uji, atur privacy mode melalui BotFather `/setprivacy` atau permission admin agar menerima jawaban teks biasa, lalu gunakan `/group`. Inline mode opsional. Reminder/pengumuman default OFF; `/reminders on` adalah opt-in.

Hadiah harian reset 00:00 UTC (**07:00 WIB**), bukan tengah malam lokal. Deadline raja tetap berlalu meski HP/network berhenti; restart tidak memberi reset timer gratis.

## 10. Buat launcher yang dapat dijalankan dari Termux

Setelah tes foreground berhasil, tekan **Ctrl+C** untuk menghentikan bot. Jangan membuat instance kedua sementara foreground masih polling.

**DEBIAN USER tebak**:

```bash
cat > "$HOME/run-tebak.sh" <<'EOF'
#!/bin/bash
set -e
exec /bin/bash "$HOME/Tebak-Gambar-1.44.2l/bot/deploy/termux-run.sh"
EOF
chmod 700 "$HOME/run-tebak.sh"
exit
```

Sekarang **TERMUX**. Mulai sesi tmux pada host Termux (bukan daemon tmux di dalam Debian):

```bash
termux-wake-lock
tmux new-session -d -s tebak-gambar 'proot-distro login --user tebak tg-debian -- /bin/bash /home/tebak/run-tebak.sh'
tmux attach-session -t tebak-gambar
```

Untuk detach tanpa mematikan bot: **Ctrl+B**, lepas, lalu **D**.

Untuk kembali:

```bash
tmux attach-session -t tebak-gambar
```

Untuk melihat session:

```bash
tmux list-sessions
```

Untuk stop, attach lalu **Ctrl+C**. Setelah tidak ada proses bot yang perlu dijaga:

```bash
termux-wake-unlock
```

`wake-lock` dan tmux hanya membantu menjaga sesi; Android tetap dapat kill proses, jaringan bisa putus, dan panas/baterai perlu diawasi. Jangan swipe/force-stop Termux. Jangan mengandalkan `nohup`/`node &` lalu keluar dari PRoot: child process dapat ikut dihentikan saat session PRoot berakhir. Tidak ada auto-restart crash yang diam-diam dijanjikan oleh tmux.

## 11. Autostart setelah reboot (opsional)

Install **Termux:Boot dari sumber/signature yang sama** dengan Termux, buka aplikasinya sekali dan berikan izin background yang diperlukan. Ini opsi bantuan, bukan jaminan startup otomatis pada semua vendor Android.

**TERMUX**:

```bash
mkdir -p "$HOME/.termux/boot"
cat > "$HOME/.termux/boot/start-tebak.sh" <<'EOF'
#!/data/data/com.termux/files/usr/bin/bash
termux-wake-lock
if ! tmux has-session -t tebak-gambar 2>/dev/null; then
  tmux new-session -d -s tebak-gambar 'proot-distro login --user tebak tg-debian -- /bin/bash /home/tebak/run-tebak.sh'
fi
EOF
chmod 700 "$HOME/.termux/boot/start-tebak.sh"
```

Pastikan launcher, NVM, build dan `.env` sudah valid. Cek setelah reboot/unlock dengan `tmux list-sessions` dan kirim `/status` di Telegram. Script boot bukan supervisor: jika API/config gagal saat boot, operator perlu memperbaiki lalu start kembali.

## 12. Backup dan simpan di luar data Termux

Progres berada pada `~/Tebak-Gambar-1.44.2l/bot/runtime/game.sqlite` **di dalam Debian**. Menghapus data/uninstall Termux atau menghapus distro dapat menghapus semua file itu.

Buka sesi Termux kedua, login **DEBIAN USER tebak**. Jangan menjalankan poller kedua; command backup saja:

```bash
proot-distro login --user tebak tg-debian
```

Di **DEBIAN USER tebak**:

```bash
cd "$HOME/Tebak-Gambar-1.44.2l/bot"
mkdir -p "$HOME/backups"
chmod 700 "$HOME/backups"
FILE="$HOME/backups/game-$(date -u +%Y%m%dT%H%M%SZ).sqlite"
npm run backup:compiled -- "$FILE"
chmod 600 "$FILE"
age -p -o "$FILE.age" "$FILE"
```

`age` meminta passphrase secara interaktif; jangan kirim atau menaruhnya dalam command history. SQLite berisi data pribadi pengguna. Backup memakai VACUUM INTO agar konsisten walaupun WAL/bot aktif; `cp game.sqlite` saat WAL aktif bukan pengganti yang aman.

Untuk menyalin **file .age yang sudah terenkripsi** ke Download:

1. Pada **TERMUX**, jalankan `termux-setup-storage`, berikan permission, lalu login Debian lagi.
2. Pada **DEBIAN USER tebak**, cari nama `.age` di `~/backups`; bila `/sdcard/Download` tersedia pada login default PRoot:

```bash
cp "$HOME/backups/NAMA_BACKUP.sqlite.age" /sdcard/Download/
```

Ganti NAMA_BACKUP dengan file yang dibuat, jangan ketik literal placeholder. Jika binding storage berbeda, periksa akses/permission; jangan memindahkan source/DB aktif ke shared storage. Salin backup terenkripsi ke storage terpisah dari HP dan simpan passphrase di tempat aman; salinan di Download HP saja tidak menyelamatkan data ketika seluruh HP hilang.

Restore harus dilakukan **setelah bot benar-benar stop**. Dekripsi snapshot ke directory privat, validasi, simpan evidence DB lama, lalu ganti DB tanpa mencampur WAL/SHM lama. Ikuti [runbook restore](PRODUCTION.md#f-upgrade-rollback-dan-restore), bukan mengimpor JSON export untuk menaikkan skor.

## 13. Update bot dengan aman

1. Attach sesi bot, **Ctrl+C** untuk stop.
2. Buat backup seperti di atas dan pastikan tersimpan di luar checkout/distro bila diperlukan.
3. Login **DEBIAN USER tebak** dan jalankan:

```bash
export NVM_DIR="$HOME/.nvm"
. "$NVM_DIR/nvm.sh"
nvm use 22
cd "$HOME/Tebak-Gambar-1.44.2l"
git branch --show-current
git pull --ff-only origin arena/2926bc24-tebak-gambar-1-44-2l
cd bot
npm ci
npm run typecheck
npm run assets:verify
npm run test:mobile
npm run build
npm run doctor
exit
```

Jangan menimpa `.env`, menghapus runtime, reset/reinstall distro, atau pindah branch untuk sekadar update. Jika Git melaporkan perubahan lokal/konflik, periksa dahulu, jangan blind `reset --hard`/`clean`.

Dari **TERMUX**, jika sesi lama sudah berakhir:

```bash
termux-wake-lock
tmux new-session -d -s tebak-gambar 'proot-distro login --user tebak tg-debian -- /bin/bash /home/tebak/run-tebak.sh'
```

Jika `duplicate session`, inspect/attach dahulu; jangan membuat nama sesi lain untuk menjalankan token sama. Kirim `/status` dan cek progres masih benar.

## 14. Troubleshooting

| Error/gejala | Penanganan |
|---|---|
| `pkg: command not found` | Anda di Debian: gunakan apt untuk paket sistem, atau exit ke Termux |
| `apt: command not found` | Anda di Termux: login Debian dahulu |
| `nvm: command not found` | Source `~/.nvm/nvm.sh` di user Debian tebak; pastikan bukan home Termux/root |
| Node versi 18/20 atau `node:sqlite` tidak ada | Gunakan NVM Node 22.13+, bukan Node distro lama |
| `process.platform` menunjukkan android | Dependency bot jangan diinstall di native Termux; jalankan di Debian/glibc |
| Sharp unsupported runtime / cannot load | Periksa platform/arch dan jangan memakai node_modules hasil lingkungan lain; `npm ci` di Debian, jangan omit optional packages |
| Linux binary `cannot execute` / missing interpreter | Salah arsitektur atau binary glibc dijalankan di native Termux; kembali periksa environment |
| `edgesOut` npm | Pastikan npm 11.6.0 melalui NVM; jangan menghapus lockfile untuk menyembunyikan problem |
| Unknown image/`--name` proot-distro | Periksa `install --help`; pakai jalur alias lama jika versi itu belum mendukung OCI |
| Signal 9 / proses mendadak mati | Android battery/phantom/CPU/RAM limits; kurangi proses, satu worker test, hapus pembatasan baterai jika tersedia; tidak ada jaminan Termux 24/7 |
| Test timeout | Gunakan worker tunggal + timeout 60 detik; tetap cek FAIL/assertion, jangan klaim test lulus |
| `409 conflict` | Ada poller lain. Stop instance lain; jangan menjalankan foreground dan tmux sekaligus |
| Token/API gagal | Edit .env lokal; cek HTTPS/DNS/data saver/bot lama, gunakan doctor --telegram, bukan curl URL bertoken dalam history |
| Nyawa/progres hilang | Periksa user home dan DATABASE_PATH; root/user berbeda bisa memakai checkout/database berbeda |
| DB permission/locking | Gunakan runtime internal Debian mode 700, file 600; jangan chmod 777 atau pindahkan DB ke /sdcard |
| `dist/...` tidak ditemukan | `npm run build` di repo bot setelah dependency terpasang |
| Tidak respons di grup | Privacy BotFather/permission bot/grup; uji reply pesan bot atau set privacy yang sesuai |
| `duplicate session` / `no sessions` tmux | Inspect/attach sesi yang ada; jika tidak ada, proses mungkin sudah berhenti — start satu instance lagi |

Tidak memakai systemd atau Docker daemon di Android tanpa root; panduan ini memilih PRoot+tmux. Untuk layanan yang harus selalu online, VPS Linux tetap lebih sesuai. Jangan membagikan token/.env/export/backup untuk troubleshooting; cukup error tersensor, versi Node/npm, platform/arch dan status doctor tanpa nilai rahasia.

## Referensi upstream

- [Termux resmi — instalasi, signature plugin, batas proses Android](https://github.com/termux/termux-app).
- [PRoot-Distro — CLI OCI versi baru](https://github.com/termux/proot-distro/blob/v5.10.0/README.md).
- [PRoot-Distro — alias distro versi lama](https://github.com/termux/proot-distro/blob/v4.35.0/README.md).
- [NVM v0.40.8](https://github.com/nvm-sh/nvm/tree/v0.40.8).
- [Sharp — supported prebuilt Linux platforms](https://github.com/lovell/sharp/blob/main/docs/src/content/docs/install.md).

## 17. Pembaruan versi 1.1.0

Lihat [UPGRADE.md](UPGRADE.md) untuk seluruh perubahan dan batas bukti. Sesudah Debian/user/NVM/Node sudah siap, tersedia `bash deploy/termux-prepare.sh` di dalam folder bot untuk dependency locked, verifikasi, tes mobile, build dan doctor offline. Ini hanya helper fase persiapan; bukan pemasang APK/PRoot/Node. Jangan jalankan saat bot masih aktif, lakukan backup/stop dahulu untuk instalasi lama. `.env` dan runtime tidak dihapus/ditimpa.

Launcher `bash deploy/termux-run.sh` mengaktifkan NVM 22 lalu menjalankan build, tanpa install/pull otomatis. `--check` menjalankan doctor normal dan `--check-offline` tanpa Telegram. Token tetap di `.env` privat; probe live tetap eksplisit `npm run doctor -- --telegram`.

Startup kini memiliki lock singleton lokal di file DB `.instance.sqlite`. File boleh tetap ada setelah stop/crash; lock kernel dilepas otomatis. **Jangan hapus/ganti file lock ketika proses mungkin berjalan**, termasuk ketika muncul error konflik. Guard tidak mendeteksi poller di HP/server lain atau DB berbeda dengan token sama. Native API timeout default 45 detik, opsional `API_TIMEOUT_SECONDS=35..120`. Backup menolak target yang sudah ada; pilih nama baru, jangan memaksa overwrite.

Suite 117 tes juga diuji pada Node minimum 22.13.0 Linux x64; bukan bukti PRoot/ARM64/Android fisik. Gunakan Node 22 patch terbaru dari NVM dan lakukan acceptance di HP sendiri.
