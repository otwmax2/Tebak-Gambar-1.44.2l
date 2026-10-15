# Hasil validasi implementasi bot

Pemeriksaan lokal 15 Oktober 2026 UTC. Runtime diuji: Node.js 22.22.3 dan 22.13.0 (Linux x64), npm 11.6.0, TypeScript 5.9.3, grammY 1.46.0, Sharp 0.35.5, Vitest 4.1.11.

## Bukti

| Pemeriksaan | Status |
|---|---|
| TypeScript source/scripts typecheck | PASS |
| TypeScript test fixtures typecheck | PASS |
| 400 SHA-256 gambar | PASS |
| 400 PNG metadata + pixel decode | PASS |
| Semua 20 level dan 30 raja | PASS |
| Walkthrough engine seluruh 400 soal, score final, tamat level 20 | PASS |
| 41 engine tests | PASS |
| 34 grammY handler/API mock tests | PASS |
| 8 image/sticker/frame/path tests | PASS |
| 3 audio/quota/hint persistence tests | PASS |
| 11 readiness/preflight tests, read-only SQLite, mock probe API, redaction/no-network | PASS |
| 20 regression tests: lock/crash, backup, migration, transaction, catalog, reward | PASS |
| **Total 117 tests** | **PASS** |
| Build JavaScript | PASS |
| Lockfile clean install dengan npm 11.6.0 | PASS |
| npm audit (all dependency types) | 0 vulnerability terlapor pada saat pemeriksaan |
| Live simulator HTTP: onboarding, callback, PNG, WebP, Ogg, selfie, export, grup, delete/recreate, media ownership | PASS |
| Compiled backup pada DB aktif/WAL: progres, score, permissions, quoted path, refuse overwrite | PASS |
| Production start tanpa BOT_TOKEN | Ditolak, fail closed; token tidak dicetak |
| Telegram live API / BotFather registration | **BELUM DIUJI** |
| Docker image/compose di host deployment | **BELUM DIUJI** |
| systemd service / remote CI | **BELUM DIUJI** |
| Load testing multi-user/multi-instance | **BELUM DIUJI** |

`data/test-results.json` memuat hasil Vitest aktual. `data/validation-log.txt` memuat keluaran check terakhir; `data/npm-audit.json` memuat advisory status saat validasi. File yang tidak diikutkan Git: node_modules, dist, runtime SQLite, `.env`, cache.

## Apa yang diuji

- Benar/hampir/salah dan bounded Unicode normalization.
- Lock level/soal, optional shuffle dengan slot boss tetap, milestone dan checkpoint.
- Sesi per user/chat, stale callback, duplicate update ID, reply gambar lama.
- Atomic hint/free-answer consumption, daily cap, selfie cap, score once.
- Persistent deadline/SQLite reopen, timer timeout, clock rollback, zero-life recovery.
- Seluruh 400 soal benar menghasilkan 4.600 poin progres (370×10 + 30×30), tidak ada soal terlewat.
- Group first-winner, moderator/initiator stop, private progress tidak tersentuh.
- Command/menu/deep link parsing dengan grammY asli, mock Bot API saja yang diganti.
- Foto nyata diproses Sharp dengan seluruh 10 frame, WebP 512 px dengan batas ukuran.
- Selfie command/upload handler lengkap memakai mock file download; retry/reward terkontrol.
- Export hanya data pemilik, delete FK cascade, confirmation nonce, admin access control.
- Reminder opt-in, durable queue, retry/backoff dan retry_after 429.
- Audio 11 Ogg dan penolakan arbitrary paths; suggestion quota dan SQL parameters.
- Hint paid positions bertahan lintas sesi dan dibersihkan saat benar.

## Reproduksi

```bash
cd bot
npx --yes npm@11.6.0 ci
npm run check
npm audit --audit-level=low
npm run backup:test
npm run coverage:repo
```

Pada instalasi awal npm melaporkan advisori pada tool test/esbuild yang dipin lebih lama. Tooling diperbarui ke Vitest 4.1.11 dan esbuild 0.28.1 override, kemudian seluruh typecheck/test/build diperiksa ulang; lockfile final tidak lagi melaporkan vulnerability. Ini status registry saat pemeriksaan, bukan klaim kode sendiri bebas semua kerentanan.

## Persiapan deployment baru

`npm run doctor:offline` lulus pemeriksaan lokal; token tidak tersedia dan API Telegram tetap BELUM DIUJI. Pemeriksaan default `npm run doctor` harus menolak token kosong, bukan menganggap host produksi siap. Runbook baru: [PRODUCTION.md](PRODUCTION.md). Template systemd menjalankan doctor di ExecStartPre; perubahan Docker/systemd ini belum dideploy di host nyata.

## Kriteria acceptance Telegram sebelum rilis publik

1. Token pengelola disimpan di environment/.env mode 600, bukan Git/chat.
2. getMe, setMyCommands, long polling dan shutdown bekerja pada host dengan akses HTTPS Telegram.
3. Uji dua akun nyata: private progress, cross-user callbacks, group quiz/privacy mode.
4. Uji media photo/sticker/Ogg document dengan klien Telegram target, termasuk permission/file size.
5. Uji HTTP 429/403, blocked user, restart saat attempt raja, outbox recovery dan refill.
6. Uji backup/restore SQL dan ownership volume; `.env` dan backup tidak diunggah ke repo.
7. Validasi hak penggunaan/distribusi aset serta privacy notice pemilik.

Tidak ada token nyata digunakan di test/demo. Perbedaan dengan Android dirinci di FEATURE_PARITY.md, sehingga keberhasilan test lokal tidak disamakan dengan parity server/SDK 100%.

## Status publikasi CI

GitHub menolak push workflow aktif karena koneksi GitHub App sesi ini tidak memiliki izin `workflows`. YAML disimpan sebagai template `deploy/telegram-bot.workflow.yml`, bukan workflow aktif. Kode bot dan template tetap dapat dipublikasikan; pengelola berizin dapat mengaktifkannya kemudian.

## Upgrade 1.1.0

Rincian perubahan: [UPGRADE.md](UPGRADE.md). Bukti suite minimum Node disimpan di `data/test-results-node22-min.json`. Baseline 83 tes menjadi 117; rincian: engine 41, bot 34, upgrade 20, media 8, ekstra 3, preflight 11. SIGKILL memakai proses anak OS nyata; timeout outbox 25s memakai virtual clock, bukan uji latensi WAN.

HTTP integration juga memverifikasi penolakan foreign Origin/content-type dan cookie Secure/Partitioned. Shell helper Termux diperiksa dengan `bash -n`, --help, launcher doctor offline dan eksekusi prepare penuh pada fixture Linux yang membuktikan .env/runtime/score lama tetap utuh; belum dibuktikan lewat instalasi HP/boot nyata. Tidak ada klaim live Telegram, Docker/systemd atau Actions telah dijalankan. Native SQLite ExperimentalWarning dan punycode DeprecationWarning pada Node minimum bukan failure.
