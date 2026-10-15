# Pemetaan cakupan: Android archive → bot Telegram

Pilihan pengguna: **bot mandiri, semua 400 soal yang tersedia, long polling**. Bukan koneksi backend asli dan bukan penyalinan seluruh Android SDK ke TypeScript.

## Arti “seluruh repo” yang dapat diverifikasi

- Seluruh path terlacak + untracked nonignored pada working tree diklasifikasi oleh `scripts/map-repository.ts` ke `data/repository-map.csv`.
- Seluruh **400 konten soal lokal** benar-benar digunakan bot dan diuji dari awal sampai tamat.
- Arsip asli tetap utuh; semua kelas/metadata/resource yang tidak digunakan dicatat sebagai preserved/reference-only.
- “Mapped” berarti ada keputusan perlakuan untuk sebuah path, **bukan** bukti seluruh metode di path itu telah diimplementasikan identik.
- Tidak ada klaim seluruh branch remote lain telah di-checkout/diubah. Implementasi mengikuti branch sesi tetap dan snapshot saat ini.

## Matriks fitur

| Area sumber Android | Bot / padanan | Status dan batas |
|---|---|---|
| TGApplication startup/singleton | index/config/store/catalog | Aktif: bootstrap Node, bukan Android Application |
| Splash + Story | /start + /help, inline menu | Adaptasi onboarding teks; animasi/slide Android tidak dirender 1:1 |
| Home menu | command dan InlineKeyboard | Aktif, tampilan native Telegram |
| Pilih level | /levels /play [level] | 20 level dengan server-side lock |
| Pilih soal/ordering | /questions + progress.order_json | Shuffle biasa, raja/checkpoint anchored, persisted |
| 400 ZIP soal terenkripsi | 400 PNG dan catalog JSON | Seluruh payload terverifikasi, runtime tidak membutuhkan legacy crypto |
| Metadata 64 level default | catalog level 1–20 dan quote | Level 21–64 tidak memiliki ZIP lokal; tidak dibuat konten palsu |
| RegularQuestionActivity + ViewModel | Engine.answer + grammY message handler | Aktif, NFKC/whitespace lebih luas daripada Android ASCII-space helper |
| Levenshtein benar/hampir/salah | distance/normalize | Aktif, jarak 0 benar, 1–2 hampir benar |
| Nyawa | Engine.player/loseLife | 5 default, refill 600 detik fallback kode lokal |
| Raja timer | persisted session.deadline | 60 detik default, /play ulang tidak memperbarui deadline |
| Raja checkpoint level 11+ | progress.checkpoint=10 | Aktif, rollback ketika nyawa habis |
| Cabang refill otomatis saat boss gameover | Waktu refill tetap berlaku | Sengaja berbeda untuk mencegah restart farming |
| Hint random positions + preference | hints_state + progress.hints | Aktif, posisi paid hint bertahan lintas stop/restart, dibersihkan saat benar |
| Tambah hint dengan selfie | /selfie +2/hari UTC | Aktif, cap harian baru; bukan weekly campaign Android |
| Tambah hint/nyawa/free answer dengan video ads | /daily reward offline | Adaptasi ekonomi, tidak memalsukan verifikasi video/reward iklan |
| FreeAnswer API | balance lokal + /freeanswer | Aktif untuk soal biasa progres, tidak butuh credential/server lama |
| QuotesActivity | /quote + pesan akhir level | Quote asli 20 level dipakai |
| Sound effects | /sound Ogg document | 11 sound tersedia; bukan auto-play sound Android, klien Telegram menentukan playback |
| Google Play achievement | /achievements | Milestone lokal, tidak mengirim achievement Google Play |
| Leaderboard Google Play | /leaderboard | Skor SQLite lokal, tidak tersinkron GPGS |
| HowToPlay/ClueEvent tutorial | /help /howto + penjelasan checkpoint/hint | Adaptasi teks, bukan tutorial animasi identik |
| EventQuestionActivity/backend events | /challenge + /group | Event offline deterministik dan kuis kolaboratif; bukan data event server asli |
| Selfie chooser/editor + cropper | /selfie [odd level], /frame, upload photo | 10 frame 1–19 dipakai, EXIF rotate dan crop cover 500×500; tidak ada editor Android freehand |
| WhatsApp sticker campaign | /sticker (WebP gambar soal) | Padanan Telegram yang dapat dibuat offline; bukan pack WA/backend campaign identik |
| Social media sharing / TweetReceiver | /share + deep link + inline query | Sharing native Telegram; tidak memakai Twitter/Facebook app secret |
| SendQuestion/email/captcha | /suggest /feedback + admin inbox | Identitas Telegram, parameterized SQL, quota harian; tidak mengirim email/PII ke HTTP legacy |
| In-app rating | /feedback + inbox lokal | Tidak meminta rating Play Store, tidak memakai Play Core review API |
| Firebase/Google/Facebook login | Telegram user ID | Identitas yang disediakan Telegram, tidak mengimpor akun/progres Android lama |
| GameData Hashids cloud-save | SQLite/Telegram user ID across devices + export/backup | Progres tersimpan di host bot, bukan Firebase/game backend; JSON import skor arbitrer tidak tersedia |
| Room schema/DAO | SQLite migrations 1–2 | Model baru sesuai bot, bukan kompatibilitas binary DB Android |
| SharedPreferences | players/progress/hints_state/sessions | Aktif, server-side state dan transactions |
| DownloadService/versioning | SHA-256 catalog + startup verify | Konten lokal tervalidasi, tidak fetch HTTP atau unzip konten tak tepercaya saat runtime |
| FCM/local notification | scheduler + durable outbox | Timeout dan reminder nyawa opt-in; tidak menerima push dari Firebase |
| RemoteConfig | validated environment | Config lokal, tidak melakukan remote fetch |
| Ads/custom/offline ad banners | Tidak digunakan | Android/mobile ad SDK tidak sesuai Telegram; tanpa backend kampanye autentik |
| Android Activity/Fragment/Data Binding | grammY command/callback | Tidak dijalankan atau ditranspilasi |
| Android layouts/styles/themes/fonts/density | Native Telegram UI | File dipertahankan; Telegram client tidak mendukung theme/font Android |
| FileProvider/ContentProvider | InputFile + media memori | Tidak mengekspor Android provider; private Telegram transfers |
| Kotlin builtins/profile/proto/signature | Preserved audit archive | Metadata platform lama, bukan runtime Node |
| Google/Facebook/Twitter/Vungle SDK Java/Smali | Tidak diikutkan executable | Diganti tanggung jawab yang relevan; tidak menyalin SDK atau credential |
| Android permissions/manifest | BOT_TOKEN/config/runtime permissions | Linux file/network permissions berbeda; manifest Android bukan manifest bot |
| Audit, atlas, hashes, decrypted evidence | Tetap tersedia | Bukti historis, bukan fitur runtime atau test Android |

## Kebijakan game tambahan yang sengaja dibuat untuk Telegram

- Group quiz 120 detik, winner pertama; tidak mengubah progres privat.
- Challenge harian +5 poin sekali/hari.
- Score anti-farming: progres per soal per akun; grup per user/soal/day.
- Daily reward dan selfie dibatasi UTC-day, bukan timestamp RemoteConfig yang tidak tersedia.
- Stale/cross-user/cross-chat callbacks ditolak; reply terhadap gambar lama ditolak.
- Notifikasi/pengumuman opt-in, foto tidak disimpan di disk, data export/delete privat.
- Semua API legacy cleartext dan game token Hashids tidak dipakai.

## Belum terbukti dan tidak dijanjikan

- Telegram getMe/sendPhoto/sendSticker/sendDocument/getUpdates nyata: membutuhkan token, akses network dan pengujian pada host pemilik.
- Production deployment Docker/systemd/CI dan load testing belum dilakukan.
- Full parity backend event/campaign, Google Play, ads, Android gestures/screens/media editor tidak tersedia.
- Bukan migrasi semua source Java/library ke TypeScript atau emulasi APK.
- Poin publik bersifat kasual: answers di repo terbuka, tidak ada jaminan anti-cheat ekonomi.

Scope yang telah dipilih dapat berfungsi sebagai bot mandiri setelah konfigurasi Telegram; kata “100%” hanya sah untuk **cakupan 400 aset tersedia dan coverage path indeks**, bukan seluruh perilaku aplikasi Android/server.
