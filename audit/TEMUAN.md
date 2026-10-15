# Temuan keamanan, reliabilitas, dan tata kelola

**Snapshot:** `50a31d40e67903255208218c93c7d92c64781653` · **Pemeriksaan:** 15 Oktober 2026 UTC.

Dokumen ini adalah review statis source hasil dekompilasi dan jalur Smali tertentu. Tidak ada serangan ke server, percobaan credential, capture token, atau eksekusi APK. Nomor baris menunjuk berkas snapshot awal; nama metode/field pendek merupakan hasil obfuscation.

## Cara membaca prioritas dan bukti

- **P0:** tangani segera sebelum penggunaan/rilis yang melibatkan akun atau konten jaringan. Ini urutan kerja, bukan klaim breach aktif.
- **P1:** penting sebelum rilis yang dapat dipercaya.
- **P2:** hardening/keandalan; dapat naik prioritas bila chain runtime terbukti.
- **Terkonfirmasi statis:** konfigurasi/alur eksplisit terlihat di file.
- **Perlu verifikasi runtime/server:** konsekuensi aktual bergantung state akun, OS, konfigurasi backend/SDK atau reachability.
- Tidak diberikan CVSS/CVE karena tidak dilakukan penilaian eksploitabilitas penuh atau verifikasi advisori versi.

## SEC-01 — Token Firebase ditambahkan ke URL navigasi tanpa pembatasan tujuan

**Prioritas P0 · Tingkat dampak potensial tinggi · Alur kode terkonfirmasi statis.**

### Bukti

- `sources/y8/f.java:45–57`: `d(Uri)` mengambil pengguna Firebase aktif dan meminta token melalui `W3(false)`.
- `sources/y8/f.java:79–84`: ketika task sukses, URI ditambah query parameter bernama `token` berisi hasil token.
- `sources/y8/f.java:60–75`: helper pembuka browser dan Custom Tab sama-sama memanggil helper penambah token.
- `sources/y8/f.java:136–141`: URL HTTP/HTTPS dengan host bukan `tebakgambar.com` masuk ke helper Custom Tab itu.
- `sources/y8/f.java:216–219`: route webview/browser juga mengambil `url` dari query tanpa allowlist origin yang terlihat.
- `sources/com/tebakgambar/splash/SplashActivity.java:68–70`: URI masuk dari launcher/deep link diteruskan ke navigator.
- `resources/AndroidManifest.xml:209+`: Splash exported dan menerima custom scheme/HTTPS deep link.

### Dampak dan prasyarat

Jika pengguna sudah login, pengambilan ID token berhasil, dan aplikasi memproses navigasi yang tujuan akhirnya dapat dipengaruhi pihak lain, token dapat terkirim ke origin tujuan sebagai bagian URL. Penerima URL, log server, telemetry browser atau komponen yang menangani intent dapat melihatnya. HTTP membuat kerahasiaan transport lebih buruk.

Perlu membuktikan versi runtime benar-benar menjalankan jalur itu dan kebijakan backend menerima token yang bersangkutan. Tidak diklaim semua pengguna telah bocor atau bahwa ID token sama dengan refresh token. Risiko ini tetap serius walaupun ID token memiliki masa berlaku terbatas.

Nama route “webview” tidak mengubah fakta bahwa helper yang terlihat membangun Custom Tab. Solusi bukan sekadar menonaktifkan JavaScript.

### Rekomendasi

1. Jangan menambahkan token autentikasi ke navigasi umum atau query URL.
2. Pisahkan navigator internal, external browser, dan handoff autentikasi.
3. Untuk handoff web yang benar-benar diperlukan, gunakan kode sekali pakai, singkat, dibatasi audience/origin, ditukar server-to-server atau endpoint terkontrol.
4. Validasi scheme `https`, exact host/port/path yang diizinkan, dan redirect chain; jangan memakai pemeriksaan substring domain.
5. Default URL di luar allowlist dibuka tanpa credential; skema asing ditolak atau ditangani secara eksplisit tanpa token.
6. Tinjau log pemilik secara aman dan kebijakan pencabutan sesi jika ada indikasi exposure; jangan mengumpulkan token pengguna untuk laporan.

### Uji penerimaan

Dengan mock FirebaseAuth dan intent resolver, seluruh URL eksternal harus menghasilkan intent tanpa token; host yang mirip domain tepercaya, subdomain tak tepercaya, redirect, null/malformed URL dan double-encoding harus diuji. Gunakan token dummy, bukan akun produksi.

## SEC-02 — Rahasia OAuth didistribusikan dalam aset dan kode klien

**Prioritas P0 · Exposure nilai terkonfirmasi · Validitas/privilege belum diuji.**

### Bukti

- `resources/assets/oauth_consumer.properties:2–7` berisi Twitter consumer key/secret serta Facebook consumer key/secret.
- `sources/com/tebakgambar/TGApplication.java:98` menginisialisasi Twitter dengan pasangan key/secret literal.
- Resource strings juga memuat Facebook client token, Google API key dan ID aplikasi Firebase/Ads.

Nilai credential tidak disalin ke laporan. Indeks `dependencies.csv` menyamarkan key/secret pada file OAuth aset, sedangkan file asli tetap tidak diubah.

### Dampak dan pembedaan penting

OAuth **consumer secret/server-side app secret** yang ditanam dalam APK/repo harus dianggap dapat dibaca oleh siapa pun yang memperoleh distribusi tersebut. Dampak tergantung layanan, privilege, pembatasan, dan apakah credential masih aktif.

Google API key Firebase, OAuth client ID, Facebook client token dan AdMob application ID **tidak otomatis setara private server secret**. Sebagian memang identifier publik klien. Keamanannya perlu restriction package/certificate/API, Firebase rules dan server authorization yang benar. Menyebut semua identifier ini “database telah dibobol” tidak didukung bukti.

### Rekomendasi

- Pemilik meninjau dan mencabut/merotasi secret yang masih aktif melalui konsol resmi.
- Pindahkan operasi yang membutuhkan secret ke backend; obfuscation/enkripsi string APK tidak membuat secret aman.
- Batasi public API key pada API, package dan fingerprint resmi; audit aturan akses Firebase dan environment.
- Pertimbangkan pembersihan riwayat Git untuk mengurangi penyebaran, tetapi jangan menganggap history rewrite menggantikan rotasi.
- Jangan menaruh credential pengganti di audit, source, `.env` ter-track atau chat.

### Uji penerimaan

Secret scanner pada source **dan hasil paket APK** tidak menemukan server-side secret; pengujian integrasi menggunakan environment/credential uji yang disediakan pemilik secara aman.

## SEC-03 — Ekstraksi ZIP tidak mengurung path hasil ekstraksi

**Prioritas P0 · Potensi arbitrary file write dalam hak aplikasi · Pola kode terkonfirmasi; exploit runtime belum dibuktikan.**

### Bukti

- `sources/y8/h.java:213–219`: helper membuka `ZipFile` dan mengekstrak ke direktori target.
- `sources/net/lingala/zip4j/unzip/Unzip.java:71–85, 123–133`: parent/directory dibangun dari target + nama entry.
- `sources/net/lingala/zip4j/unzip/UnzipEngine.java:231–250`: output path adalah string target + separator + entry; membuka `FileOutputStream` dan dapat menghapus file tujuan yang sudah ada.
- Pada jalur tersebut tidak terlihat canonical path containment check, penolakan `..`, batas entry/ukuran atau symlink policy.
- `smali/com/tebakgambar/service/TGDownloadService.smali:1490–1590` menautkan URL level → unduh → `y8.h.f()` → `y8.h.s()` → version synchronization.
- Metadata/URL default masih HTTP; lihat SEC-04.

### Dampak dan prasyarat

Pihak yang dapat memengaruhi ZIP yang diekstrak berpotensi menulis di luar folder level tetapi masih dalam hak akses UID aplikasi. Ini dapat merusak preference, DB, cache atau data aplikasi. **Tidak otomatis memberikan root atau RCE.** Potensi eksekusi bergantung target tulis dan pemakaian file sesudahnya; itu belum dibuktikan.

400 ZIP yang dibundel tidak mempunyai traversal pada nama entry yang terlihat. Temuan ini menyangkut algoritma ekstraksi dan paket jaringan, bukan tuduhan bahwa aset bundel berbahaya. CRC payload bundel juga tidak diuji karena terenkripsi.

### Rekomendasi

1. Gunakan library arsip terpelihara dan tetap lakukan validasi path di boundary aplikasi.
2. Hitung canonical/normalized destination untuk setiap entry dan pastikan berada **di bawah** canonical output directory, dengan separator boundary yang benar.
3. Tolak absolute path, traversal, drive path, entry ambigu/backslash berbahaya dan symlink/hardlink sesuai platform.
4. Batasi ukuran unduh, total extracted bytes, jumlah entry, rasio kompresi, kedalaman folder dan waktu pemrosesan.
5. Verifikasi signature paket dari sumber tepercaya; digest yang dikirim melalui HTTP yang sama tidak cukup.
6. Ekstrak ke staging kosong, validasi format lengkap lalu aktifkan atomik. Jangan menandai versi selesai pada hasil parsial.

### Uji penerimaan

Gunakan corpus ZIP sintetis di test lokal terisolasi: traversal, absolute path, separator campuran, nested archive, duplikat, ukuran berlebih dan arsip terpotong. Tidak satu pun dapat membuat/menghapus file di luar direktori staging. Tidak perlu memakai server game.

## SEC-04 — HTTP diizinkan dan digunakan oleh jalur data/konten nyata

**Prioritas P1; menjadi bagian chain P0 dengan SEC-03 · Konfigurasi terkonfirmasi.**

### Bukti

- `resources/AndroidManifest.xml:54`: `usesCleartextTraffic=true` global.
- `resources/res/values/strings.xml:38–39`: base API host dan legacy memakai HTTP.
- `sources/com/tebakgambar/network/TebakGambarApi.java:63`: daftar level HTTP.
- `resources/assets/default_level.json`: 64 ZIP level URL HTTP.
- `sources/com/tebakgambar/sendquestion/a.java:237+`: mengirim username/email/ide melalui interface legacy form POST.

### Dampak

Transport tersebut tidak menyediakan kerahasiaan/integritas TLS: pihak pada jalur jaringan berpotensi membaca atau mengganti metadata, paket, dan data kirim ide. DNS/redirect/server policy aktual tidak diuji.

API modern login/game/free-answer memiliki annotation URL HTTPS absolut. Base HTTP tidak membuat seluruh request itu otomatis cleartext; laporan tidak menyamakan semua endpoint.

### Rekomendasi dan verifikasi

Migrasikan seluruh endpoint/konten ke HTTPS, tolak downgrade redirect, set cleartext false, dan bila transisi sementara benar-benar dibutuhkan gunakan exception host sekecil mungkin. Jalankan test network security config dan mock HTTP untuk memastikan request cleartext gagal, sementara fitur offline tetap berfungsi.

## SEC-05 — HTTP logging BODY aktif pada client aplikasi

**Prioritas P1 · Konfigurasi dan logger terkonfirmasi; hasil log perangkat belum diperiksa.**

### Bukti

- `TebakGambarApi.java:134–144`: `ta.a` di-set `EnumC0257a.BODY` lalu dipasang ke client normal dan download, tanpa guard release yang terlihat.
- `sources/ta/a.java`: nama asal HttpLoggingInterceptor; logger default menulis melalui platform logger.
- `sources/com/tebakgambar/model/RequestHeader.java:13`: Bearer Authorization.
- Login/update/request legacy membawa token, snapshot progres, email/nama atau payload lain.

### Dampak

Header/body dapat masuk ke logcat/debug collection dan memperluas exposure data. Android modern membatasi aplikasi biasa membaca log aplikasi lain; ini **bukan** klaim semua aplikasi lokal bisa membacanya. Akses developer/ADB/root/support SDK atau log collection yang tidak aman tetap relevan.

### Rekomendasi

Level NONE pada release; debug logging harus opt-in, redaksi header/field sensitif, batas ukuran dan retensi. Pastikan logger download tidak menyalin body besar/binary. Test build release dengan payload dummy dan pastikan tidak ada token/email/game state di output logger.

## SEC-06 — Proteksi konten/state berbasis rahasia tetap dan Hashids

**Prioritas P1 untuk asumsi trust/integritas; bukan bukti backend bisa dicurangi.**

**Pembaruan terverifikasi:** tindak lanjut [LAPORAN_DEKRIPSI.md](LAPORAN_DEKRIPSI.md) berhasil membuka 400/400 ZIP bundel, memulihkan metadata/jawaban dan mendekode seluruh PNG menggunakan kunci lokal, tanpa brute force atau server. Pemulihan konten offline kini telah dibuktikan, bukan hanya inferensi statis. Validasi state backend tetap tidak diketahui.

### Bukti

- `sources/y8/k.java:14–23,63,77`: key dan IV literal; cipher `AES/CBC/NoPadding` dengan padding spasi buatan.
- `sources/y8/y.java:631–638,730–736`: Hashids salt tetap dan pemetaan karakter; decode tidak membutuhkan rahasia server.
- `sources/com/tebakgambar/model/GameData.java`: timestamp/nyawa/LevelStructure2 menjadi encoded game token.
- `Question.smali:387+`: nama/password ZIP diturunkan secara deterministik di klien.

### Dampak

Kunci/IV tetap yang dikirim ke klien dapat dipulihkan; CBC tanpa autentikasi tidak memberi jaminan integritas. Hashids bukan cipher/MAC. Enkripsi konten offline dapat menaikkan usaha analisis kasual tetapi tidak menjamin jawaban rahasia terhadap pemilik perangkat.

Risiko cheating atau replay server hanya terwujud jika backend mempercayai state/encoding itu tanpa validasi otorisasi, transisi, freshness dan anti-replay. Implementasi backend tidak ada di repo.

### Rekomendasi

- Jadikan server otoritatif untuk reward/progres bernilai; validasi transisi dan idempotency.
- Gunakan signed content manifest dengan public verification key untuk integritas paket.
- Untuk data yang benar-benar butuh confidentiality lokal, gunakan desain key management dan AEAD yang sesuai; jangan memakai satu key/IV hardcoded untuk seluruh instalasi.
- Validasi panjang/schema/tipe saat decode dan beri recovery error terkontrol.

## SEC-07 — Root FileProvider eksternal terlalu luas

**Prioritas P2 · Konfigurasi terkonfirmasi; dampak membutuhkan URI grant/chain.**

### Bukti

`resources/res/xml/providers_path.xml:3–8` memakai `external-path path="."` dan internal files path. Manifest provider `androidx.core.content.FileProvider` memiliki exported false dan grantUriPermissions true.

### Dampak dan rekomendasi

Root luas memperbesar cakupan file yang dapat dibuat URI-nya oleh kode aplikasi. Aplikasi lain tidak otomatis mendapat akses hanya karena provider ada; perlu grant atau jalur berbagi yang dapat dipengaruhi.

Batasi pada app-specific media subdirectory yang diperlukan, gunakan grant temporer/read-only, revoke bila sesuai, validasi semua file tujuan. Uji sharing selfie, URI tampering, camera/crop callback, dan penolakan URI di luar area share.

## SEC-08 — Permukaan komponen exported perlu dikurangi dan diuji

**Prioritas P2 · Exposure manifest terkonfirmasi.**

### Bukti dan nuansa

- `resources/AndroidManifest.xml:345+`: `TGFirebaseMessagingService` exported true tanpa izin service yang tercantum.
- Splash exported memang diperlukan untuk launcher/deep link, tetapi inputnya harus diperlakukan tidak tepercaya.
- Analytics/Facebook/Play assetpack serta beberapa service SDK lain exported; sebagian punya izin atau pemeriksaan internal sendiri.
- `TGDownloadService` dan WorkManager SystemJobService dilindungi BIND_JOB_SERVICE; tidak disetarakan dengan endpoint bebas akses.
- Provider stiker punya read permission WhatsApp dan whitelist nama aset, tetapi metadata dan hook `call(refreshMatcher)` perlu verifikasi khusus.

### Rekomendasi

Gunakan exported false untuk messaging service bila tidak perlu external caller sesuai kontrak SDK. Audit action, sender identity, permission, caller UID dan null/malformed extras. Test exported surface menggunakan aplikasi penguji lokal berizin tanpa mengirim payload ke layanan produksi. Jangan menghapus semua exported component secara buta karena dapat memutus login/push/launcher/stiker.

## REL-01 — PendingIntent download tidak memiliki flag mutability

**Prioritas P1 · Java dan Smali konsisten; crash runtime belum dijalankan.**

### Bukti

- `sources/com/tebakgambar/service/TGDownloadService.java:166`: `PendingIntent.getActivity(..., 0)`.
- Baris 192 dan 194: `268435456` (`FLAG_CANCEL_CURRENT`), tanpa IMMUTABLE/MUTABLE.
- `smali/com/tebakgambar/service/TGDownloadService.smali:731–782,976–1003`: flag yang sama.
- Target SDK 34.

Pada Android 12+ untuk aplikasi menarget API 31+, pembuatan PendingIntent membutuhkan pilihan mutability eksplisit. Jalur ini berpotensi IllegalArgumentException ketika dipanggil. Tidak diklaim startup selalu gagal: perlu masuk jalur download/notifikasi tersebut.

**Perbaikan:** immutable bila penerima tidak perlu memodifikasi intent; gabungkan dengan update/cancel flag sesuai semantik. Test notifikasi download awal, sukses, gagal, retry pada API 31/33/34. Jalur push memakai immutable dan tidak termasuk masalah ini.

## REL-02 — Foreground download service tanpa deklarasi tipe

**Prioritas P1 · Manifest dan call terkonfirmasi.**

`TGDownloadService.java:168` memanggil `startForeground`; manifest mendeklarasikan FOREGROUND_SERVICE tetapi tidak foregroundServiceType pada service ini. Target SDK 34 memerlukan penyesuaian tipe/izin foreground service yang sesuai pada Android 14. Jalur tersebut berpotensi gagal saat dijalankan di OS relevan.

**Perbaikan:** evaluasi apakah dataSync FGS/WorkManager/DownloadManager paling cocok, nyatakan tipe dan izin platform yang diwajibkan, patuhi aturan start dari background, dan uji ketika app foreground/background serta setelah process death. Jangan sekadar menambahkan tipe tanpa menyesuaikan lifecycle.

## REL-03 — Notification/storage/receiver memakai pola lama

**Prioritas P1 untuk matriks kompatibilitas · Dampak beberapa cabang perlu runtime.**

### Bukti

- Manifest tidak meminta POST_NOTIFICATIONS.
- `y8/a.java:83+` dan `y8/h.java:140+` meminta READ/WRITE_EXTERNAL_STORAGE untuk kamera/pilih/simpan gambar.
- `TGApplication.java` mendaftarkan receiver CONNECTIVITY_CHANGE dengan overload registerReceiver lama tanpa flag.

### Analisis

- Pada instalasi baru Android 13+, notifikasi biasa membutuhkan permission yang sesuai; fitur reminder/push tidak boleh menganggap izin tersedia.
- Izin storage legacy tidak menyelesaikan kebutuhan media Android modern dan pada jalur tertentu dapat memblokir fitur app-specific storage yang sebenarnya tidak memerlukan izin luas.
- Aturan receiver untuk aplikasi target modern bergantung apakah hanya system broadcast yang terdaftar dan exemption yang berlaku. CONNECTIVITY_CHANGE adalah kasus sistem; **tidak diklaim pasti crash akibat flag hilang** tanpa uji.

**Perbaikan:** Photo Picker/MediaStore/app-specific storage, runtime notification flow yang jelas, ContextCompat receiver API dengan flag yang benar dan exemption diperhitungkan. Test allow/deny/permanently-deny/upgrade OS dan instalasi bersih.

## REL-04 — Main-thread I/O, singleton/lifecycle, dan validasi state

**Prioritas P2 · Pola kode terkonfirmasi; ANR/leak/corruption belum direproduksi.**

### Bukti

- `TGDatabase.C()` dan `StickerPackDatabase.C()` memakai builder `.c()` yang mengaktifkan flag main-thread access (`androidx/room/h0.java:182`).
- `y8/y.java` menggunakan `commit()` sinkron pada banyak preference helper.
- DB singleton getter tidak memakai sinkronisasi eksplisit.
- `TGApplication` seed DB asinkron dengan flag preference terpisah.
- `GameData.decode()` dan parsing state level/hint memakai index/format asumtif.
- `Level.isDownloadedLevelAvailable()` memanggil `file.list().length` tanpa pemeriksaan null pada jalur itu.
- `m8.a` menyimpan state/time berdasarkan wall clock dan memegang context singleton; perlu menilai jenis context pemanggil dan lifecycle sebelum menyebut leak nyata.

### Rekomendasi

Pindahkan I/O ke executor/coroutine yang jelas, gunakan transaksi untuk seed/status yang konsisten, singleton thread-safe, parse schema defensif, tangani folder list null/file hilang, dan injeksikan clock untuk tes. Gunakan StrictMode, performance trace, process-death tests, disk-full/malformed preference corpus.

Rumus persen pada `i8/a.java` terlihat memakai pembagian integer dan variabel decompiler `r0`; ini kandidat audit UI/progress, bukan bukti final rumus runtime tanpa memeriksa semua instruksi padanannya.

## REL-05 — Cloud-save error handling dan update konten tidak tahan semua kegagalan

**Prioritas P1 · Jalur callback/Smali diperiksa; kehilangan data aktual belum dibuktikan.**

### Bukti

- `sources/m8/d.java:38+`: callback response mereset retry; tidak terlihat pemeriksaan HTTP success/body di callback itu.
- Retry transport/offline maksimum lima dengan delay 5 detik; bukan durable queue.
- Pengambilan token memasang success listener saja pada jalur yang dilihat.
- Smali loop unduh menggunakan delete direktori tujuan lalu unzip langsung dan synchronizeVersion; tidak ada aktivasi staging atomik yang terlihat.
- `Level.isAvailable()` hanya mengandalkan jumlah file.

### Dampak

HTTP 401/5xx, token refresh error, process death, file parsial atau update setengah jalan dapat menyebabkan state server/klien berbeda, update terlewat atau konten lama/baru bercampur. Dampak bergantung alur caller dan backend.

### Rekomendasi

Durable queue, exponential backoff+jitter, klasifikasi auth/validation/server/transport, idempotency dan revision conflict handling. Validasi lengkap paket, staging/atomic switch, transaksi version metadata. Test 401/403/409/429/500, timeout, duplicate callback, restart dan offline lama.

## GOV-01 — Provenance, lisensi, build dan dependency inventory belum memadai untuk produksi

**Prioritas P1 · Gap repository terkonfirmasi.**

Tidak ada project/build wrapper, test aplikasi, CI, LICENSE tingkat repo, R8 mapping, APK sumber, lockfile atau SBOM dependency resmi. Ada SDK besar dengan metadata versi lama/alpha/RC. Sertifikat publik yang disalin tidak memvalidasi ulang APK yang tidak tersedia.

**Rekomendasi:** dapatkan source/APK resmi dan otorisasi; pisahkan arsip decompile dari project pemeliharaan; gunakan official artifacts, version pinning, provenance/hash/signature, license notices dan CVE scan berbasis koordinat yang benar. Jangan menebak versi library dari nama package atau menandai CVE hanya dari kemiripan kode.

## Kandidat dan batas yang tidak boleh dinaikkan menjadi tuduhan

- JavaScript bridge/dynamic Dex di SDK ads: perlu analisis origin dan input sebelum menyebut RCE/malware.
- Metadata Google/Firebase publik: belum membuktikan aturan Firebase terbuka.
- Exported komponen: beberapa dilindungi permission dan validasi internal.
- Mismatch Java/Smali: dapat berasal dari rename/inner class, bukan semuanya kelas hilang.
- Lisensi tidak ada di root: tidak membuktikan tidak pernah ada izin kontraktual; perlu dokumen pemilik.
- Array hint: jalur penyimpan mengurutkan array; penggunaan binarySearch bukan otomatis bug di sini.
- Tidak ada match pola TLS bypass tertentu: bukan sertifikasi keamanan TLS seluruh SDK.
- Tidak membuka ZIP: isi gambar/jawaban dan integritas payload **belum diverifikasi**, meskipun container terinventarisasi.

## Kriteria menutup temuan

Suatu temuan sebaiknya baru berstatus selesai setelah:

1. Perbaikan dilakukan di source yang dapat dibangun dan ditinjau diff-nya.
2. Regression test gagal pada perilaku lama dan lulus pada perilaku baru dengan data dummy.
3. APK hasil build diverifikasi konfigurasi/resource-nya dan dijalankan pada matriks OS relevan.
4. Jika melibatkan server, pemilik memverifikasi auth/restriction/rotasi pada sistem resmi, tanpa membocorkan rahasia ke laporan.
5. Risiko residual dan perubahan perilaku pengguna dicatat.

Pembuatan laporan ini sendiri **belum memperbaiki** temuan pada aplikasi; tidak ada file aplikasi asli yang diubah.
