# Bedah menyeluruh repository Tebak Gambar 1.44.2l

**Tanggal pemeriksaan:** 15 Oktober 2026 (UTC)  
**Repository:** `otwmax2/Tebak-Gambar-1.44.2l`  
**Snapshot acuan:** `50a31d40e67903255208218c93c7d92c64781653`  
**Workspace:** `/home/user/Tebak-Gambar-1.44.2l`  
**Branch pekerjaan:** `arena/2926bc24-tebak-gambar-1-44-2l`

## Pembaruan lanjutan: payload 400 ZIP kini terverifikasi

Setelah audit statis awal ini, seluruh **400/400 ZIP berhasil dibuka**, metadata dan jawaban didekripsi, serta 400 PNG didekode dan divalidasi. **0 kegagalan**. Lihat [LAPORAN_DEKRIPSI.md](LAPORAN_DEKRIPSI.md) untuk bukti, galeri, password per arsip dan 10 test integrasi tambahan. Pernyataan “ZIP belum dibuka” di bagian audit awal di bawah adalah batas pemeriksaan **pada tahap awal**, bukan status hasil lanjutan. Batas runtime APK/backend tetap berlaku.

## Peta laporan

1. [Kesimpulan utama](#1-kesimpulan-utama)
2. [Cakupan, metode, dan batas kepastian](#2-cakupan-metode-dan-batas-kepastian)
3. [Inventaris seluruh repository](#3-inventaris-seluruh-repository)
4. [Identitas Android dan manifest](#4-identitas-android-dan-manifest)
5. [Arsitektur dan alur aplikasi](#5-arsitektur-dan-alur-aplikasi)
6. [Mesin permainan](#6-mesin-permainan)
7. [Penyimpanan dan sinkronisasi](#7-penyimpanan-dan-sinkronisasi)
8. [API dan jaringan](#8-api-dan-jaringan)
9. [UI, media, fitur tambahan](#9-ui-media-fitur-tambahan)
10. [Dependensi dan supply chain](#10-dependensi-dan-supply-chain)
11. [Kualitas dekompilasi dan rekonstruksi build](#11-kualitas-dekompilasi-dan-rekonstruksi-build)
12. [Keamanan, privasi, kompatibilitas](#12-keamanan-privasi-kompatibilitas)
13. [Validasi yang benar-benar dijalankan](#13-validasi-yang-benar-benar-dijalankan)
14. [Rencana tindak lanjut](#14-rencana-tindak-lanjut)
15. [Cara menavigasi seluruh bukti](#15-cara-menavigasi-seluruh-bukti)

Lampiran:
- [Temuan keamanan dan reliabilitas terperinci](TEMUAN.md).
- [Atlas 272 file Java aplikasi dan pendukung](ATLAS_APLIKASI.md).
- [Atlas seluruh 634 package Java](ATLAS_PACKAGE.md).
- [Batas cakupan dan petunjuk reproduksi](README.md).
- [Statistik JSON](data/summary.json), [inventaris setiap file](data/files.csv).

---

## 1. Kesimpulan utama

**Repo ini adalah arsip hasil dekompilasi aplikasi Android, bukan source project Android asli yang siap di-build.** Pesan commit acuan menyebut APK didekompilasi menggunakan decompiler.com. Struktur `resources/`, `sources/`, `smali/`, komentar JADX, serta hilangnya konfigurasi Gradle konsisten dengan hal itu. Nama versi aplikasi `1.44.2l`, package `com.tebakgambar`, version code `14061`.

Aplikasi merupakan game teka-teki gambar dengan pilihan level/soal, soal raja/boss, nyawa, petunjuk, free answer, event, login sosial, sinkronisasi progres, unduh paket level, selfie frame, pengiriman ide soal, stiker WhatsApp, iklan, analytics, dan push notification.

Kesimpulan paling penting:

1. **Seluruh 26.536 file snapshot awal diinventarisasi**, termasuk hash SHA-256 dan ukuran. Total konten 152.941.884 byte atau sekitar 145,86 MiB; ini bukan ukuran APK atau ruang disk checkout.
2. Java berjumlah 11.953 file: 11.952 di `sources/` dan **satu file tambahan** `resources/generated-sources/com/twitter/TldLists.java`. Mayoritas kode merupakan SDK/dependensi, bukan logika game buatan pengembang.
3. Ditemukan **606 kemunculan stub `Method not decompiled` di 435 file Java**. Java ini tidak dapat dianggap sebagai implementasi yang sepenuhnya pulih. Dua stub berada di namespace `com.tebakgambar`; metode pemuatan soal dan unduh level ditelusuri juga melalui Smali.
4. Ada 64 definisi level default, tetapi aset yang benar-benar dibundel hanya 20 level × 20 ZIP = **400 ZIP terenkripsi**. Level metadata ≠ konten soal yang tersedia offline.
5. Ada risiko prioritas tinggi: token Firebase diteruskan dalam URL ke tujuan navigasi tanpa allowlist host yang terlihat; rahasia OAuth tertanam; HTTP masih dipakai; logging HTTP tingkat BODY; ekstraksi ZIP tidak membatasi path hasil ekstraksi secara kanonis pada jalur yang diperiksa.
6. Target SDK 34 berdampingan dengan beberapa pola lama yang bermasalah pada Android modern: flag PendingIntent tidak lengkap pada jalur download, foreground service tanpa tipe, izin storage lama, dan receiver dinamis lama.
7. Tidak ada Gradle wrapper, build scripts, APK/DEX asli, CI, test suite aplikasi, README awal, atau LICENSE tingkat repo pada snapshot yang diperiksa. Build dan uji Android runtime **tidak dilakukan**.

**Penilaian praktis:** berguna sebagai bahan reverse engineering dan pemetaan perilaku; belum layak dijadikan basis rilis produksi langsung. Prioritas bukan menambal file Java hasil dekompilasi satu per satu, melainkan memperoleh source asli atau menyiapkan rekonstruksi terkontrol dengan hak penggunaan yang jelas.

## 2. Cakupan, metode, dan batas kepastian

### 2.1 Apa arti cakupan penuh di laporan ini?

| Lapisan | Cakupan yang dilakukan | Batas yang tetap ada |
|---|---|---|
| Daftar file Git snapshot | 26.536/26.536 path, ukuran, SHA-256 | Bukan verifikasi keaslian APK sumber |
| Teks dikenali | Pemindaian 25.215 file / 5.030.636 baris | Pemindaian otomatis bukan pemahaman manual tiap baris |
| Seluruh Java | Package, asal komentar decompiler, hitungan deklarasi/import, stub, pola risiko | Regex bukan parser Java, bukan call graph lengkap |
| Java inti aplikasi | Atlas 160 file namespace aplikasi + 112 file pendukung | Review semantik mendalam difokuskan pada alur utama dan batas kepercayaan |
| Smali | Seluruh file dihash dan dipindai sebagai teks; jalur soal, download, PendingIntent tertentu ditelusuri | Tidak seluruh instruksi diverifikasi manual atau dieksekusi |
| XML | 865/865 berhasil diparse | Tidak diuji melalui Android resource compiler |
| ZIP level | 400/400 directory entries dan metadata diperiksa | Terenkripsi; isi dan CRC payload tidak dibuka/diuji |
| PNG | 891/891 header, ukuran, struktur chunk, CRC diperiksa | Tidak menilai tiap gambar secara visual atau mendekode seluruh pixel |
| Audio/font | Struktur halaman 11 Ogg dan batas tabel 6 TTF diperiksa | Tidak diputar, dirender, atau diaudit codec-nya |
| Biner lainnya | Hash, signature sederhana; GZIP diuji dekompresi | Bukan reverse engineering penuh profil/kotlin metadata/sertifikat |
| Backend, OAuth, Firebase | Kontrak dan pemakaian klien dianalisis | Server, aturan Firebase, status kunci, trafik nyata tidak diuji |

**Tidak jujur jika menyebut ini “100% semua perilaku sudah dipahami dan aman”.** Cakupan inventaris benar-benar penuh; analisis semantik bersifat luas dan berbasis bukti, dengan area belum terverifikasi dinyatakan terbuka. Tidak ada kesimpulan “bebas malware”, “semua bug ditemukan”, atau “seluruh CVE terdeteksi”.

### 2.2 Metode dan keselamatan pemeriksaan

- Checkout sudah tersedia; tidak dilakukan clone duplikat, checkout branch lain, push, atau perubahan source aplikasi.
- Acuan path diambil melalui `git ls-tree` dari commit tetap, bukan `find` yang dapat mencampurkan `.git` dan artefak audit.
- Semua file acuan dibaca lokal untuk inventaris. SHA-256 adalah hash **byte file checkout**; test konsistensi memastikan inventaris cocok dengan file saat pemeriksaan.
- Tidak mengeksekusi kode aplikasi, SDK, Gradle, file class, atau payload arsip.
- Tidak membobol password ZIP, tidak membongkar jawaban soal, tidak mencoba credential yang tertanam, dan tidak menghubungi API game.
- Rahasia OAuth tidak disalin ke narasi; nilai sensitif di keluaran metadata dependensi disamarkan. File asli tetap apa adanya.
- Riwayat Git lokal shallow; hanya satu commit terlihat. Ini **tidak membuktikan** remote tidak memiliki riwayat lain.
- Tidak mengambil database advisori CVE atau informasi versi terbaru. Risiko versi dibahas sebagai pemeliharaan, bukan daftar kerentanan terkonfirmasi.

## 3. Inventaris seluruh repository

### 3.1 Empat komponen tingkat atas snapshot awal

| Path | File | Byte konten | Makna |
|---|---:|---:|---|
| `sources/` | 11.952 | 38.381.724 | Java hasil dekompilasi, termasuk SDK dan generated code |
| `smali/` | 12.291 | 99.182.811 | Representasi bytecode Dalvik/ART tekstual |
| `resources/` | 2.292 | 13.544.803 | Manifest, Android resources, assets, metadata dependency/signature |
| `tree.txt` | 1 | 1.832.546 | Dump struktur pohon; bukan kode atau konfigurasi build |
| **Total** | **26.536** | **152.941.884** | Tidak termasuk `.git` dan dokumen audit baru |

`du` menunjukkan pemakaian disk lebih besar karena alokasi blok banyak file kecil dan metadata Git. Jangan menyamakan `du`, ukuran file logis, ukuran APK, atau ukuran instalasi Android.

### 3.2 Semua jenis file

| Ekstensi | Jumlah | Ekstensi | Jumlah |
|---|---:|---|---:|
| `.java` | 11.953 | `.smali` | 12.291 |
| `.png` | 891 | `.xml` | 865 |
| `.zip` | 400 | `.version` | 61 |
| `.properties` | 39 | `.ogg` | 11 |
| `.kotlin_builtins` | 7 | `.ttf` | 6 |
| `.txt` | 2 | `.json` | 1 |
| `.bin` | 1 | `.prof` | 1 |
| `.proto` | 1 | `.gz` | 1 |
| `.RSA` | 1 | `.SF` | 1 |
| `.MF` | 1 | `.j0` | 1 |
| `.u` | 1 | | |

`.j0` dan `.u` adalah nama berkas service-provider metadata dalam `resources/META-INF/services/`, bukan otomatis binary executable. Klasifikasi “non-text-classified” pada scanner berarti di luar daftar ekstensi teks scanner, bukan klaim bahwa byte-nya pasti biner.

### 3.3 Hal yang tidak ada

Tidak ditemukan proyek Gradle (`settings.gradle`, `build.gradle`, varian Kotlin DSL, wrapper), `apktool.yml`, `AndroidManifest.xml` dalam source tree standar `app/src/main/`, APK asli, DEX asli, native `.so`, NPM/Python app, server backend, database SQLite berisi data pengguna, test instrumentation, workflow `.github`, atau mapping R8/ProGuard.

Tidak adanya berkas itu berlaku pada **snapshot repository**, bukan bukti APK awal pasti tidak pernah memiliki split, modul, atau berkas tambahan.

### 3.4 Java vs Smali

- Semua 11.952 path Java di `sources/` dibandingkan dengan 12.291 path Smali menurut nama relatif.
- 84 path Java tidak punya pasangan **path persis** di Smali; 423 path Smali tidak punya Java dengan path persis.
- Sebagian mismatch disebabkan package rename/sanitization oleh JADX seperti `p000authapi` dan flattening inner/synthetic class.
- Contoh inner class yang dirujuk manifest memakai notasi titik, sedangkan nama file hasil dekompilasi dapat memakai `$`. Pencocokan path sederhana tidak memahami semua ekuivalensi ini.
- Karena itu, angka mismatch **bukan** jumlah kelas hilang atau jumlah error runtime yang terkonfirmasi. Daftar lengkap ada di `source-smali-diff.csv`.

## 4. Identitas Android dan manifest

Sumber: `resources/AndroidManifest.xml:1–57`.

| Atribut | Nilai |
|---|---|
| Package | `com.tebakgambar` |
| Version name / code | `1.44.2l` / `14061` |
| Min SDK | 19 |
| Target / compile SDK | 34 / 34 |
| Application class | `com.tebakgambar.TGApplication` |
| Label | Tebak Gambar |
| Install location | `auto` |
| Backup | `allowBackup=false`, `fullBackupContent=false` |
| Cleartext HTTP | **Diizinkan global** |
| Large heap / hardware acceleration | Keduanya `true` |
| RTL / back callback | Dideklarasikan aktif |

### 4.1 Izin yang benar-benar diminta: 12

1. `WRITE_EXTERNAL_STORAGE`: jalur media legacy; perilaku dibatasi OS modern.
2. `INTERNET`: API, konten, iklan, autentikasi.
3. `ACCESS_NETWORK_STATE`: cek status koneksi.
4. `READ_EXTERNAL_STORAGE`: akses media legacy.
5. `WAKE_LOCK`: pekerjaan latar/SDK.
6. `VIBRATE`: efek/notification.
7. `FOREGROUND_SERVICE`: download service.
8. `com.google.android.c2dm.permission.RECEIVE`: FCM.
9. `com.google.android.gms.permission.AD_ID`: advertising identifier.
10. `com.google.android.finsky.permission.BIND_GET_INSTALL_REFERRER_SERVICE`: attribution/referrer.
11. `ACCESS_WIFI_STATE`: SDK/status jaringan.
12. `com.tebakgambar.DYNAMIC_RECEIVER_NOT_EXPORTED_PERMISSION`: izin signature lokal.

Daftar mesin tersedia di `summary.json → permissions`. Selain 12 elemen `<uses-permission>`, manifest **mendefinisikan** satu izin signature lokal melalui elemen `<permission>`; definisi itu bukan izin tambahan yang diminta.

### 4.2 Komponen

Manifest berisi **76 komponen**: 34 activity, 19 service, 15 receiver, 8 provider. Ada 13 yang eksplisit/implisit exported menurut pemetaan scanner. Beberapa dilindungi izin signature/system; exported bukan sinonim kerentanan.

Komponen first-party penting:

- `SplashActivity`: launcher dan penerima deep link, exported.
- `HomeActivity`, pemilih level/soal, regular/event question: antarmuka utama.
- `TGDownloadService`: exported tetapi dilindungi `BIND_JOB_SERVICE`.
- `TGFirebaseMessagingService`: exported tanpa izin pada deklarasi komponen; perlu pengurangan exposure dan uji runtime.
- `LocalNotificationWorker`: kelas WorkManager, bukan service manifest mandiri.
- `StickerContentProvider`: exported, read permission `com.whatsapp.sticker.READ`, untuk integrasi stiker.
- AndroidX `FileProvider`: **tidak exported**, tetapi menerima temporary URI grant; konfigurasi root eksternalnya luas.

Komponen SDK exported lainnya meliputi Facebook callback/provider, Firebase receiver/federated login, Google sign-in revocation, WorkManager job/diagnostics, Analytics receiver, Play asset pack extraction. Lihat `components.csv` untuk semua nama, izin, action, authority, deep link, dan status pasangan source literal.

### 4.3 Deep link dan package visibility

`SplashActivity` menerima launcher, skema `tebakgambar`, serta HTTPS `tebakgambar.com` dengan `autoVerify=true`. Routing mencakup home, howto, send-ideas, login popup, photo-frame, stiker WA, level, webview, dan browser.

- `autoVerify=true` hanya permintaan verifikasi OS; repo tidak membuktikan kepemilikan host atau kebenaran `assetlinks.json`.
- `<queries>` mencakup WhatsApp, Instagram, Facebook reguler/lite, provider Facebook dan browser/custom tabs.
- Nama route “webview” ternyata membuka **Custom Tab**, bukan bukti first-party WebView dengan JavaScript bridge. WebView/bridge yang terdeteksi banyak berada di SDK iklan.

### 4.4 Metadata sertifikat

`openssl pkcs7` membaca `resources/META-INF/CERT.RSA`:

- Subject dan issuer: `CN=tebakgambar.com`.
- Validitas X.509: 26 Juli 2013 hingga 26 November 3012, GMT.
- Fingerprint SHA-256: `91:A1:B9:EC:76:B7:46:02:30:D2:B1:57:E9:44:90:45:42:C0:AD:63:7D:E9:A4:6A:5B:23:36:75:B6:EF:C9:11`.

Ini metadata sertifikat publik; **bukan private signing key**. Tidak ada klaim APK signature valid: APK asli, signing block v2/v3, serta kesesuaian seluruh entry APK tidak tersedia. Tanggal sertifikat tidak sama dengan tanggal rilis aplikasi.

## 5. Arsitektur dan alur aplikasi

### 5.1 Bentuk arsitektur

Aplikasi memakai campuran Activity, AndroidX ViewModel/LiveData, Data Binding, Room, SharedPreferences, task/promise (`t1`), callback HTTP Retrofit/OkHttp yang terobfuscasi, dan singleton manager.

```text
TGApplication
 ├─ init Facebook / Twitter / MobileAds
 ├─ init Room + seed default_level.json
 ├─ init TebakGambarApi
 └─ init GameManager (m8.a) + GameSaverHandler (m8.d)
      │
SplashActivity ← deep link / Firebase Dynamic Links / notification
      │
      ├─ StoryActivity (onboarding)
      └─ HomeActivity
           ├─ LevelSelection → LevelLoading? → QuestionSelection
           │                                    └─ RegularQuestionActivity
           │                                          └─ QuestionViewModel (question.g)
           │                                               ├─ Level/Question
           │                                               ├─ SharedPreferences + GameManager
           │                                               └─ FreeAnswer API / ads reward
           ├─ EventQuestionActivity
           ├─ SendQuestionActivity
           ├─ Selfie / Crop / EditFrame
           └─ Sticker campaign → DB + files → ContentProvider → WhatsApp

TGDownloadService → HTTP metadata/ZIP → internal files → unzip → Versioning
FirebaseAuth → ID token → RequestHeader → HTTPS API → sinkronisasi GameData
```

Diagram adalah alur tingkat fitur yang ditelusuri, bukan call graph lengkap setiap SDK.

### 5.2 Startup

`TGApplication.onCreate()` (`sources/com/tebakgambar/TGApplication.java:91+`):

1. Menyimpan singleton application.
2. Inisialisasi Facebook SDK dan komponen `b5.g`.
3. Inisialisasi Twitter dengan key/secret tertanam dan opsi debug.
4. Jika DB belum diinisialisasi, menambahkan level default lewat task `t1.h`, lalu menandai preference initialized.
5. Membentuk API client modern/legacy/download.
6. Menginisialisasi GameManager dan listener countdown.
7. Mengatur WebView data directory suffix untuk API 28+.
8. Menginisialisasi MobileAds.
9. Mendaftarkan receiver perubahan konektivitas dengan API lama.

Seed berlangsung asinkron. Perlu uji cold start/rotasi/perpindahan sangat cepat agar UI tidak mengandalkan DB yang belum selesai terisi. Ini risiko race yang perlu diuji, bukan crash yang telah direproduksi.

### 5.3 Package aplikasi yang namanya disamarkan

| Package | Makna dari komentar asal/referensi |
|---|---|
| `g8` | Resource/generated/synthetic yang terkait aplikasi |
| `h8` | App review |
| `i8` | Broadcast status unduh level |
| `j8` | BaseActivity/BaseViewModel, AdManager, dialog dan fragment iklan |
| `k8` | Free-answer bottom sheet dan ViewModel |
| `l8` | In-app review dialog dan ViewModel |
| `m8` | GameManager, GameSaverHandler, GameTracker |
| `n8` | DAO Room, implementasi DAO, konverter tipe |
| `o8` | 56 kelas Data Binding/generated implementation |
| `p8` | Kontrak click listener |
| `r8` | HowToPlay ViewModel |
| `s8` | Firebase login dialog/ViewModel |
| `w8` | Synthetic callback download |
| `y8` | Utilities, file, crypto, Hashids, Levenshtein, deep link, sharing |

**Tidak boleh menganggap package pendek pasti library atau pasti first-party.** Pemetaan di atas berbasis nama asal/referensi, bukan seluruh mapping obfuscation yang lengkap.

### 5.4 Batas tanggung jawab

- Activity mengelola lifecycle, binding, intent, dialog, media, navigasi.
- ViewModel game mengelola state soal, penilaian jawaban, hint, boss, nyawa, dan event UI.
- `m8.a` memegang state progres dan nyawa global.
- `m8.d` mengirim snapshot game ke backend melalui handler thread.
- `Level` mencampur model, akses DB, resource lookup, dan preference state.
- `Question` mencampur model, loading arsip, hint, dan perhitungan dimensi.
- `y8.y` adalah utility besar (1.056 baris), mencampur preference, crypto/encoding, JSON, dan helper UI.

Dengan demikian ini bukan arsitektur domain/data/UI yang terpisah ketat. Refactor harus memisahkan tanggung jawab dan menambahkan characterization tests lebih dahulu.

## 6. Mesin permainan

### 6.1 Identitas dan struktur level

`Level.java` menentukan:

- Level global untuk index soal `i`: `(i / 20) + 1`.
- Folder: `android-level-{id}`.
- Nama paket unduh sementara: `android-level-{id}.zip`.
- Urutan/status soal disimpan sebagai string serialisasi yang dipisahkan `#` dan `-` di preference.
- Soal terakhir suatu level ditandai boss.
- Mulai level 11, checkpoint ditetapkan pada soal urutan 10 melalui pemrosesan urutan 11.
- Level terbuka dibandingkan dengan level maksimum yang tersimpan.
- Soal “receh” berdasarkan daftar `soalRecehIds`.
- Selfie level tersedia untuk level ganjil menurut `hasSelfieLevel()`.
- Status upcoming menggunakan timestamp `comingSoon`; slider tampil sekali per pasangan level/slider ID.

`isDefaultLevelAvailable()` / `isDownloadedLevelAvailable()` hanya memeriksa keberadaan dan jumlah file minimal 20, **bukan validitas paket**, kesesuaian nama/versi, atau integritas isi. File parsial/asing dapat membuat hasil ketersediaan menyesatkan.

### 6.2 Konten bundel

`default_level.json` berisi response dengan `code` dan `data` berisi 64 level ID 1–64. Field default meliputi ID, title/subtitle, ZIP URL, icon/frame URL, achievement, quotes, version, dan color.

- Level 1–20: masing-masing 20 ZIP aset, total 400.
- Level 21–64: definisi ada, ZIP lokal tidak ada.
- Seluruh default `ZipLevelURL` menggunakan HTTP pada host `apis.tebakgambar.com`.
- Ada 400 entry arsip total, masing-masing satu entry. Ukuran tidak terkompresi menurut header total 4.259.250 byte.
- Nama entry bukan nama file gambar biasa; metadata terenkripsi/terenkode diproses klien.
- Tidak ditemukan path traversal dalam **nama entry ZIP bundel**. Ini tidak menjamin ZIP yang diunduh dari jaringan aman.

### 6.3 Pemuatan soal: Java tidak cukup

`Question.lambda$getQuestion$2()` adalah stub. Smali `smali/com/tebakgambar/model/Question.smali:387–730` memperlihatkan alur:

1. Membentuk identitas soal menurut tipe/index.
2. Membentuk nama ZIP menggunakan MD5 berbasis resource secret dan identitas.
3. Mencari paket di `tg-level/`, fallback ke `assets/level/`.
4. Menyalin arsip ke file temporer.
5. Membuka dengan Zip4j dan mengatur password deterministik bila terenkripsi.
6. Membaca nama entry, memproses dekripsi helper, memecah metadata `id#type#level#answer`.
7. Menghapus suffix `.png` dari bagian jawaban, lalu membaca bytes gambar.

Tipe receh mengambil konten `jawabanreceh` dan `soalreceh` untuk memisahkan gambar jawaban dari gambar soal. Jangan mengganti stub dengan `return null` untuk “membuat compile”; itu akan merusak inti game.

Tidak dilakukan ekstraksi/dekripsi arsip, pembuktian konsistensi seluruh jawaban, atau pengujian password pada semua paket.

### 6.4 Penilaian jawaban

`question/g.java:358+`, `y8/j.java`:

- Input di-trim, spasi literal dihapus pada kedua sisi, lalu di-lowercase.
- Jarak Levenshtein dihitung dengan dynamic programming satu array.
- Jarak 0 → benar.
- Jarak 1–2 → kategori “hampir benar”, bukan disamakan dengan benar.
- Jarak >2 → salah; pada level progres terkini dapat mengurangi nyawa.
- Jika nyawa habis, alur boss dan soal biasa mempunyai penanganan berbeda.

Kompleksitas penilaian sekitar O(m×n) waktu dan O(n) memori. `toLowerCase()` tidak memakai locale eksplisit; perlu test locale seperti Turki dan input Unicode. Pemrosesan hanya menghapus karakter spasi ASCII, bukan semua whitespace/normalisasi Unicode.

### 6.5 Hint, nyawa, dan waktu

- Hint memilih posisi huruf acak yang belum terbuka, mengabaikan spasi.
- Posisi disimpan via `y8.y.j0()`, yang **mengurutkan array** sebelum penyimpanan; penggunaan `Arrays.binarySearch()` tidak langsung merupakan bug unsorted pada jalur normal ini.
- Status hint menghitung jumlah posisi vs panjang jawaban tanpa spasi.
- `m8.a.f32206z=5`: maksimum nyawa; state dibatasi di antara minimum/maksimum.
- Refill menggunakan Remote Config `v1_reload_life_timer`, fallback konstanta waktu, dan `System.currentTimeMillis()`.
- Pekerjaan notification “nyawa penuh” dijadwalkan dengan WorkManager tag `tg-life-countdown`.

Risiko: jam perangkat tidak monoton, preference mudah dimodifikasi pada perangkat yang dikompromikan, parse integer/array bergantung data valid. Game kompetitif/server reward tidak boleh mempercayai state lokal sebagai bukti otoritatif.

## 7. Penyimpanan dan sinkronisasi

### 7.1 Room: tiga database

| DB | Kelas | Tabel aplikasi | Skema |
|---|---|---|---|
| `tg-db` | `TGDatabase` | `Level`, `Versioning` | Versi 4 pada implementasi; migrasi 1→2→3→4 |
| `tgslider-db` | `SliderDatabase` | `Slider` | Definisi slider/images |
| `tgstickerpack-db` | `StickerPackDatabase` | `StickerPack` | Metadata dan daftar stiker |

Ada `room_master_table` untuk identitas skema Room; bukan tabel gameplay.

`Level`: ID, title/subtitle, ZIP/icon/frame URL, achievement, slider ID, quote, version, color, background color, comingSoon JSON, soalRecehIds JSON.  
`Versioning`: level ID dan downloadedVersion.  
`Slider`: ID, type, images JSON.  
`StickerPack`: identifier, nama/publisher, website/legal URLs, stiker JSON, tray image, link store.

Migrasi `TGDatabase`:

- 1→2: `comingSoon TEXT`.
- 2→3: `soalRecehIds TEXT`, `sliderId INTEGER NOT NULL DEFAULT 0`.
- 3→4: `backgroundColor TEXT`.

`TGDatabase` dan `StickerPackDatabase` memanggil builder `.c()` yang pada `androidx/room/h0.java:182` mengaktifkan flag akses main thread. Ini menambah risiko UI tersendat. Bukan inferensi dari nama metode saja: implementasi builder diperiksa.

Singleton DB tidak memakai sinkronisasi eksplisit di getter. Potensi inisialisasi ganda perlu diuji pada akses paralel. SQL generated menggunakan binding untuk banyak operasi DAO; tidak ada dasar untuk menuduh seluruh akses database sebagai SQL injection. Semua DDL terambil dapat dilihat di `sql.csv`.

### 7.2 SharedPreferences

Preference menyimpan progres, urutan/open state soal, hint, nyawa, waktu refill, event/clue state, status onboarding/login, rating, slider yang telah tampil, nama/email pengiriman ide, dan flag seed DB.

- Banyak helper memakai `commit()` sinkron; jika dipanggil UI thread berulang dapat menyebabkan latency.
- Sebagian string diobfuscate/enkripsi helper, tetapi itu bukan pengganti autentikasi atau integritas.
- `SharedPreferencesKey` memiliki dua constant rating dengan **nilai string sama** (`LAST_DATE_REQUEST_IN_APP_REVIEW` dan varian bottom sheet). Perlu memastikan memang sengaja berbagi state; bukan otomatis bug.
- Flag initialized seed DB terpisah dari isi DB. Restore/manual clear/migrasi gagal perlu test konsistensi.

### 7.3 Folder data

`y8/h.java`:

| Root | Fungsi |
|---|---|
| Internal `tg-level/` | Paket soal yang diunduh/diekstrak |
| Internal `tg-download/` | ZIP unduhan sementara |
| Internal `tg-temp/` | File temporer soal/media |
| Internal `tg-sticker/` | File stiker yang disajikan provider |
| External app-specific Pictures `/tebak-gambar` atau fallback internal | Foto/selfie/share |

Tidak ditemukan snapshot data pengguna aktual pada repo. Nama DB/folder adalah kontrak kode, bukan bukti berkas itu sudah ada di workspace.

### 7.4 Game token dan cloud save

`GameData` membentuk string berisi timestamp, nyawa, dan `LevelStructure2`, lalu mengodekan karakter menggunakan Hashids dengan salt tetap di klien (`y8.y.m()`); decode `y8.y.g()` memulihkan karakter.

**Hashids adalah encoding/obfuscation, bukan enkripsi terautentikasi atau tanda tangan.** `GameData.decode()` memakai split `#` dan index tetap tanpa validasi menyeluruh yang terlihat.

`m8.d`:

- HandlerThread `GAMESAVER_HANDLER` mengantre snapshot.
- State pending dapat digantikan oleh update terbaru via `removeMessages(5)`.
- Pengguna Firebase aktif diminta ID token; `RequestHeader.create()` membentuk Bearer header.
- `UpdateGameDataRequest.gameToken` dikirim ke API HTTPS.
- Kegagalan transport/offline di-retry maksimum lima kali dengan delay tetap 5 detik.
- Callback respons mengatur ulang retry tanpa pemeriksaan eksplisit sukses HTTP/body pada callback itu. Respons 401/500 dapat diperlakukan seperti selesai secara lokal.
- Pengambilan token memasang success listener; penanganan failure/retry token tidak tampak pada jalur yang diperiksa.

Perlu durable queue, exponential backoff, error classification, resolusi konflik, serta validasi server. Keamanan server **tidak dapat disimpulkan** dari kelemahan encoding klien.

## 8. API dan jaringan

### 8.1 Infrastruktur

`TebakGambarApi` menggunakan simbol hasil obfuscation yang dapat dipetakan melalui komentar:

- `ja` → OkHttp.
- `wa` → Retrofit.
- `ya` → anotasi HTTP Retrofit.
- `xa` → converter Gson.
- `ta.a` → HttpLoggingInterceptor.

Tiga client/interface:

1. `Interface`: API modern, banyak annotation URL absolut HTTPS.
2. `InterfaceOld`: endpoint legacy relatif.
3. `DownloadInterface`: metadata level dan stream unduhan dengan URL dinamis.

Base URL di `resources/res/values/strings.xml:38–39`:

- `api_host`: `http://api.tebakgambar.info/public/`.
- `api_host_old`: `http://matchingimages.com/api/1.5/`.

Jangan menyimpulkan login modern memakai HTTP hanya dari base URL: annotation URL **absolut HTTPS** mengalahkan base tersebut. Jalur legacy dan metadata/download memang tetap mempunyai HTTP.

Timeout connect/read/write pada konfigurasi umum 20 detik; client download 5 menit. Semua dipasangi logger tingkat BODY tanpa guard build-release yang terlihat.

### 8.2 Seluruh metode kontrak API yang tampak

| Interface / metode | HTTP | Tujuan |
|---|---|---|
| Download `downloadFile` | GET streaming | URL dinamis `@Url` |
| Download `getLevel` | GET | `http://apis.tebakgambar.com/v4/SoalReguler/get/{versionHash}` |
| Modern `addProgress` | POST | `https://api.tebakgambar.com/v1/free-answer/add-progress` |
| Modern `getCampaign` | GET | `https://api.tebakgambar.com/cmp/v1/home` |
| Modern `getCampaignDetail` | GET | `https://api.tebakgambar.com/cmp/v1/detail/{id}` |
| Modern `getEvent` | GET | `https://api.tebakgambar.com/v1/game/event` |
| Modern `getEventSoal` | GET | `https://api.tebakgambar.com/v1/game/event/{eventId}/questions/{questionIds}` |
| Modern `getFreeAnswer` | GET | `https://api.tebakgambar.com/v1/free-answer`, query tipe soal |
| Modern `getGameData` | GET | `https://api.tebakgambar.com/acn/v1/game` |
| Modern `login` | POST | `https://api.tebakgambar.com/acn/v1/login` |
| Modern `updateGameData` | POST | `https://api.tebakgambar.com/acn/v1/game` |
| Modern `useFreeAnswer` | POST | `https://api.tebakgambar.com/v1/free-answer/use` |
| Legacy `getHome` | GET | `homes/active/1/{versionName}` relatif pada base legacy |
| Legacy `postSoalSogam` | POST form | `soalsogam/postsoalsogam` relatif pada base legacy |

Kontrak memiliki 14 metode; ini tidak berarti seluruhnya selalu terpanggil dalam setiap sesi. SDK memiliki endpoint sendiri di luar interface ini.

`getLevel` memakai “versionHash” hasil Base64 `package&versionName&tanggal`. Base64 bukan tanda tangan request dan tanggal lokal memengaruhi nilainya.

### 8.3 Header dan data pribadi

`RequestHeader.create()` mengirim:

- `authorization: Bearer ...`.
- `x-app: com.tebakgambar-v1.44.2l`.
- `x-os`: rilis OS.
- `x-device`: model perangkat.
- `x-lang`: bahasa perangkat bila tersedia.

Pengiriman ide soal memasukkan `username`, `email`, `jawaban1`, `jawaban2`, `deskripsi` melalui API legacy HTTP (`sendquestion/a.java:237+`). Validasi email/field dan “captcha” string dilakukan di klien; tidak membuktikan anti-spam server. Logger BODY dapat menyalin data ini ke log.

### 8.4 Download dan integritas

`TGDownloadService.y()` gagal didekompilasi di Java. Smali `TGDownloadService.smali:1490–1605` menunjukkan:

- Membaca `level.zipLevelUrl`.
- Mengunduh body ke file internal.
- Memanggil delete pada direktori tujuan.
- Ekstraksi menggunakan helper Zip4j.
- Jika ekstraksi berhasil, menyinkronkan downloadedVersion dan menghapus ZIP sementara.

Tidak terlihat verifikasi signature manifest paket, digest tepercaya, batas ukuran yang ketat, atau commit atomik staging→active pada jalur tersebut. `File.delete()` pada direktori nonkosong tidak membersihkan isinya secara rekursif, sehingga file lama dapat tersisa.

Gabungan HTTP metadata/ZIP + unzip tanpa confinement adalah prioritas audit tinggi. Tidak ada eksploit aktif atau download dari server game yang dilakukan.

### 8.5 Host literal

Scanner menemukan 54 host literal HTTP(S) dalam teks yang dikenali. `domains.csv` mencakup juga namespace XML, URL dokumentasi/SDK, dan contoh string; **bukan daftar 54 host yang terbukti menerima data pengguna**. Identifikasi endpoint aktif memerlukan call tracing dan capture trafik terotorisasi.

## 9. UI, media, fitur tambahan

### 9.1 Resource Android

- `resources/res/layout*`: 212 XML layout, termasuk 188 pada folder `layout` dasar dan 24 varian orientasi/platform/ukuran.
- `values`: strings, style/theme, dimension, color, public resource mapping dan nilai generated.
- Banyak qualifier bahasa berasal dari AndroidX/SDK. Banyak folder locale **tidak membuktikan** seluruh game diterjemahkan ke semua bahasa itu.
- Drawable/mipmap tersedia untuk beberapa density; icon/level/frame adalah aset, bukan otomatis konten soal yang plaintext.
- 891 PNG lolos validasi chunk/CRC. Beberapa dimensi paling sering: 192×161, 48×48, 500×500.
- 11 Ogg meliputi suara benar/salah, klik, checkpoint, game over, reward, countdown, score, dan blank sound.
- 6 font TTF: tiga di assets (`avengeance`, `captamerica`, `dimbo`) dan tiga di resource font; lisensi distribusi harus diperiksa terpisah.
- `raw/firebase_common_keep.xml` merupakan resource keep, bukan file audio ke-12.

### 9.2 Layar dan fitur

| Area | Penanggung jawab | Perilaku/konsekuensi |
|---|---|---|
| Onboarding | `SplashActivity`, `StoryActivity` | Menentukan home vs story; deep link dan notification dapat mengubah tujuan |
| Home | `HomeActivity`, `home/a` | Menu, banner/konfigurasi, remote message, navigasi |
| Level/soal | `LevelSelectionActivity`, `QuestionSelectionActivity`, `LevelLoadingActivity`, ViewModel setempat | Lock/unlock, availability, progress dan download |
| Gameplay | `RegularQuestionActivity`, `question/g` | Jawaban, hint, free answer, reward, boss dan checkpoint |
| Event | `EventQuestionActivity`, model Event/SoalSogam | Konten/konfigurasi event dari jaringan |
| Tutorial | `HowToPlayActivity`, `ClueEventTutorialActivity` | Instruksi dan pengenalan mekanisme |
| Selfie | `SelfieFrameChooserActivity`, `EditFrameActivity`, CropImageActivity | Pilih gambar/kamera, edit/crop/frame, simpan/share |
| Ide soal | `SendQuestionActivity`, `sendquestion/a` | Nama/email dan ide jawaban/deskripsi ke API legacy |
| Quotes/slider | `QuotesActivity`, `SliderActivity` | Teks antarleveI dan promosi/info |
| Ads | `AdsActivity`, `OfflineAdActivity`, `j8.b`, `j8.k0` | Interstitial/rewarded/custom banner/offline advertising |
| Stiker | Campaign activity/list, `StickerContentProvider` | Metadata/file stiker dan integrasi WhatsApp |
| Login | `s8.f`, `s8.i` | Google/Facebook ke Firebase; profil dan sinkronisasi |

Lihat atlas untuk seluruh model, generated intent builder/injector, custom widget, dan binding, bukan hanya kelas pada tabel.

### 9.3 Stiker dan FileProvider

`StickerContentProvider`:

- Authority `com.tebakgambar.stickercontentprovider`.
- URI metadata, stickers per pack, dan aset gambar.
- Query menggunakan `MatrixCursor` dari DB metadata.
- openAssetFile memeriksa identifier/nama file terhadap metadata pack, bukan membuka path arbitrer langsung dari URI.
- Insert/delete/update ditolak dengan UnsupportedOperationException.
- Hook `call("refreshMatcher")` menyegarkan URI matcher.

Itu pembatasan positif, tetapi metadata yang diunduh dan izin `call` tetap perlu diuji. Tidak ada bukti untuk menyebut provider ini otomatis arbitrary file read.

`providers_path.xml` memberi root `external-path path="."`. Karena provider sendiri tidak exported, dampak membutuhkan URI grant/jalur berbagi yang dapat dipengaruhi. Perbaikan tetap dianjurkan: gunakan folder app-specific minimum dan batasi grant.

### 9.4 Push dan notifikasi lokal

`TGFirebaseMessagingService` membuat channel `tg-notification`, mengubah payload menjadi `TGRemoteMessage`, dan membuat PendingIntent menuju Home dengan action/data push. Pada API 23+ flag `201326592` menggabungkan UPDATE_CURRENT dan IMMUTABLE; **jangan menyamakan jalur ini dengan PendingIntent download yang bermasalah**.

Notification lokal menggunakan WorkManager, termasuk nyawa penuh dan level baru. Manifest tidak mendeklarasikan `POST_NOTIFICATIONS`; pada Android 13+ pemasangan baru tidak dapat mengandalkan notifikasi biasa muncul tanpa izin yang sesuai.

### 9.5 Iklan dan analytics

- Google Mobile Ads diinisialisasi pada startup; `j8.b` mengelola rewarded/interstitial.
- Vungle SDK dan mediation ada dalam repo; keberadaan kelas tidak membuktikan setiap jaringan aktif untuk semua pengguna.
- Model Remote Config memengaruhi waktu refill, rating, dan promosi free answer.
- `m8.e` adalah tracking game; banyak event gameplay/menu/login direkam.
- XML Analytics legacy berisi tracking, auto activity, crash reporting, sample frequency, debug dan anonymize IP. Anonymize IP pada satu tracker tidak berarti semua SDK anonim.
- Tidak terlihat gate consent sebelum semua inisialisasi SDK pada `TGApplication`; ini perlu evaluasi privasi sesuai pasar/pengguna dan konfigurasi server, bukan kesimpulan hukum otomatis.

## 10. Dependensi dan supply chain

### 10.1 Komposisi

634 package Java terinventarisasi. Package terbesar `com.google.android.gms.internal.ads` memuat **4.252 file**, sekitar sepertiga file Java. Package besar lain adalah Google measurement, drive, Firebase auth, games, serta AndroidX dan SDK pihak ketiga.

Konsekuensi:

- Jumlah baris decompile bukan ukuran kode bisnis yang ditulis pengembang.
- Audit manual seluruh SDK harus terpisah dari audit game, memakai versi/distribusi asli dan advisori yang relevan.
- File library obfuscated tidak layak di-maintain sebagai vendor fork tanpa source/koordinat dependency yang jelas.

### 10.2 Versi yang mempunyai bukti lokal

| Komponen | Versi ditemukan | Bukti |
|---|---|---|
| Android Gradle Plugin | 7.1.3 | `META-INF/com/android/build/gradle/app-metadata.properties` |
| AndroidX Activity | 1.6.0-alpha04 | `.version` |
| AppCompat | 1.6.0-alpha04 | `.version` |
| AndroidX Core | 1.9.0-alpha04 | `.version` |
| Room | 2.4.0-alpha03 | `.version` |
| SQLite | 2.2.0-alpha01 | `.version` |
| WorkManager | 2.7.0 | `.version` |
| Material | 1.3.0 | `.version` |
| Lifecycle runtime/viewmodel | 2.5.0-rc01 | `.version`; beberapa komponen lifecycle versi lain |
| Kotlin coroutines | 1.6.4 | `.version` |
| Google Mobile Ads | 22.0.0 | `play-services-ads.properties` |
| Firebase Auth | 19.3.1 | `firebase-auth.properties` |
| Firebase Messaging | 22.0.0 | `firebase-messaging.properties` |
| Firebase Analytics | 20.1.2 | `firebase-analytics.properties` |
| Firebase Config | 21.0.0 | `firebase-config.properties` |
| Firebase Dynamic Links | 19.1.0 | `firebase-dynamic-links.properties` |
| User Messaging Platform | 2.0.0 | `.properties` |
| Vungle SDK / mediation | 6.10.2 / 6.10.2.0 | `BuildConfig.java` masing-masing |

Ada 100 file metadata `.version`/`.properties` dalam indeks; satu berisi OAuth config, bukan dependency version. Metadata adalah indikasi versi build yang dikemas, **bukan lockfile dependency lengkap**, dan tidak menetapkan koordinat semua obfuscated class. Versi Facebook, Retrofit, OkHttp, Glide, Zip4j, Twitter tidak ditebak tanpa bukti kuat; keluarga library diidentifikasi dari nama/class/comment.

Versi alpha/RC dan campuran komponen perlu dimodernisasi dan diuji migrasinya. Tidak diklaim semua versi lama rentan pada CVE tertentu. Metadata AGP tidak menjamin proyek asli memakai konfigurasi build tertentu yang sekarang dapat dipulihkan.

### 10.3 Resource pendukung non-UI

- `client_analytics.proto`: schema protobuf analytics, bukan implementasi server.
- `kotlin/*.kotlin_builtins`: metadata built-in Kotlin; tidak ada source Kotlin asli hanya karena metadata itu tersedia.
- `DebugProbesKt.bin`: signature Java class (`CAFEBABE`), terkait tooling coroutine; tidak dieksekusi.
- `assets/dexopt/baseline.prof`: profile ART, bukan source/DEX dan tidak bisa menggantikan bytecode yang hilang.
- `okhttp3/internal/publicsuffix/publicsuffixes.gz`: daftar public suffix, lolos dekompresi GZIP/CRC, 94.651 byte setelah dekompresi.
- `META-INF/services/*`: service discovery metadata.
- `CERT.RSA`, `CERT.SF`, `MANIFEST.MF`: artefak signature/manifest JAR/APK yang disalin; keberadaannya tidak memvalidasi checkout yang telah didekompilasi.
- `tree.txt`: 1.639 directory dan 26.536 file menurut footer; indeks historis, bukan sumber kebenaran isi/hash.

### 10.4 Lisensi dan hak penggunaan

Tidak ditemukan LICENSE tingkat repo. Repository publik tidak otomatis memberikan hak untuk mendistribusikan game, gambar soal, font, merek, atau source decompile SDK. Sebelum rebuild/distribusi, pastikan otorisasi pemilik game dan kewajiban lisensi/notices setiap dependency. Ini identifikasi gap tata kelola, bukan putusan hukum.

## 11. Kualitas dekompilasi dan rekonstruksi build

### 11.1 Masalah nyata Java hasil decompile

- 606 stub metode di 435 file; 583 penanda `Code decompiled incorrectly` menurut pola scanner.
- Namespace aplikasi sendiri punya stub pemuatan soal dan loop download; package pendukung menambah stub DAO/binding.
- `TebakGambarApi.java` mengimpor dua `x` dan dua `a` dari package berbeda; `TGDownloadService` juga mempunyai simple-name collisions. Ini contoh konkret mengapa menambahkan Gradle saja tidak cukup.
- Synthetic lambda target muncul sebagai komentar `from class:`; sebagian tidak hadir sebagai Java file terpisah karena digabung kembali oleh JADX.
- Variable seperti `r0` atau field pseudo-decompiler bukan selalu Java valid. Contoh `i8/a.java` menunjukkan referensi `r0` pada rumus progress.
- Nama resource integer dan generated `R.java` bergantung resource table build asli. Android resource recompilation dapat mengubah ID.
- Resource hasil decode dapat diparse XML namun belum tentu diterima AAPT/Android Gradle Plugin persis seperti source asli.

### 11.2 Temuan ketidaksesuaian manifest–source

Pencocokan literal komponen ke Java tidak menemukan sembilan nama, tetapi beberapa merupakan inner-class naming mismatch. AnalyticsReceiver/Service dan Twitter ShareEmailActivity juga tidak ditemukan lewat pencarian nama pada Smali yang dilakukan.

Jangan menyimpulkan seluruh aplikasi tidak bisa launch dari hal itu: komponen dapat tidak pernah dipanggil, nama hasil transformasi perlu diperiksa, dan artefak decompiler bisa tidak lengkap. Namun ini menghalangi klaim rekonstruksi 100% dan menjadi item verifikasi terhadap APK asli.

### 11.3 Dua strategi yang masuk akal

**A. Memperoleh source asli — pilihan utama**

- Dapatkan proyek Gradle, dependency declarations/lockfiles, resource asli, mapping R8, schema Room, test suite, variant/build config dan dokumentasi backend.
- Rahasia server/OAuth disediakan melalui mekanisme aman di sisi server; jangan memasukkannya lagi ke APK.
- Jangan meminta private signing key di chat; proses penandatanganan dilakukan lewat sistem rilis pemilik.
- Bangun baseline sebelum migrasi dependency/target SDK.

**B. Rekonstruksi legal dan terukur jika source asli tidak ada**

- Simpan arsip awal sebagai bukti read-only.
- Peroleh APK/split resmi untuk pembandingan hash, class list, resource mapping, signature dan runtime.
- Gunakan Smali/JADX untuk spesifikasi perilaku, bukan menganggap dump Java sebagai codebase siap produksi.
- Bangun project Android baru secara terencana **dalam branch sesi yang sama** bila implementasi kemudian diminta, ganti library decompile dengan dependency resmi.
- Pulihkan domain logic, format level, migrasi DB, navigasi, kemudian fitur layanan eksternal.
- Tambahkan characterization tests dan golden tests agar perilaku lama tidak berubah tanpa sengaja.
- Jangan mengaktifkan trafik/credential lama untuk pengujian tanpa izin eksplisit.

Dokumen ini tidak membuat skeleton Gradle semu, tidak menambahkan fitur, tidak memodifikasi manifest/SDK, dan tidak menyatakan rebuild berhasil.

## 12. Keamanan, privasi, kompatibilitas

Rincian bukti, prasyarat, dampak, kepastian dan rekomendasi ada di [TEMUAN.md](TEMUAN.md). Ringkasan prioritas:

| ID | Prioritas | Ringkasan | Status kepastian |
|---|---|---|---|
| SEC-01 | P0 | ID token ditambahkan ke URL eksternal tanpa allowlist tujuan yang terlihat | Alur kode terkonfirmasi; pencurian token runtime tidak dicoba |
| SEC-02 | P0 | OAuth consumer secret Twitter/Facebook tertanam | Nilai ada di aset; validitas/privilege tidak diuji |
| SEC-03 | P0 | ZIP extraction tanpa confinement + sumber HTTP | Pola write path terkonfirmasi; exploit runtime belum dibuktikan |
| SEC-04 | P1 | HTTP untuk metadata/legacy/paket level | Konfigurasi dan URL terkonfirmasi |
| SEC-05 | P1 | BODY logging pada API umum/download | Konfigurasi terkonfirmasi; log perangkat tidak diambil |
| SEC-06 | P1 | AES key/IV tetap dan game token hanya Hashids | Pola terkonfirmasi; backend validation tidak diketahui |
| SEC-07 | P2 | Root FileProvider eksternal terlalu luas | Konfigurasi terkonfirmasi; butuh grant/chain untuk dampak |
| SEC-08 | P2 | Messaging service exported dan surface SDK | Exposure manifest; reachability dan abuse perlu uji |
| REL-01 | P1 | PendingIntent download tanpa flag mutability | Java dan Smali konsisten; crash runtime belum dijalankan |
| REL-02 | P1 | Foreground service tanpa deklarasi tipe untuk target 34 | Manifest/call terkonfirmasi; cabang eksekusi menentukan dampak |
| REL-03 | P1 | Izin notification/storage dan receiver lama | Ketidaksesuaian pola dengan OS modern; uji perangkat diperlukan |
| REL-04 | P2 | Main-thread DB, preference sync, lifecycle/race | Implementasi terkonfirmasi; ANR/leak tidak direproduksi |
| REL-05 | P1 | Cloud save tak membedakan seluruh kegagalan HTTP/token | Callback kode diperiksa; kehilangan data aktual tidak dibuktikan |
| GOV-01 | P1 | Build, lisensi, provenance, supply chain belum lengkap | Gap repository terkonfirmasi |

P0/P1/P2 adalah urutan penanganan internal yang disarankan, **bukan skor CVSS** atau status kompromi produksi.

Hal positif yang juga penting:

- Backup aplikasi dinonaktifkan pada manifest.
- FileProvider tidak exported.
- Beberapa service/receiver exported dilindungi izin system/signature.
- API modern utama menggunakan HTTPS absolut.
- Jalur normal hint mengurutkan array sebelum binarySearch.
- Provider stiker memeriksa nama aset terhadap metadata terdaftar dan menolak operasi tulis standar.
- Banyak akses DB memakai DAO generated/bound parameters, bukan penggabungan input mentah.
- PendingIntent push mempunyai flag immutable pada API yang relevan.

Pola JavaScript bridge/dynamic Dex yang terdeteksi dominan berasal dari SDK ads. Keberadaan itu tidak cukup untuk menuduh aplikasi melakukan RCE, malware, atau certificate bypass. Scanner tidak menemukan pola spesifik `Runtime.getRuntime().exec(...)`/`sslHandler.proceed()` yang didefinisikan; ketiadaan match **bukan bukti ketiadaan semua eksekusi/perilaku sejenis**.

## 13. Validasi yang benar-benar dijalankan

```bash
python3 audit/tools/inventory.py
python3 audit/tools/atlas.py
python3 audit/tools/test_audit.py
```

Hasil: **14 test lulus**. Test tersebut memeriksa:

1. Kesetaraan daftar inventaris dengan seluruh path commit acuan dan tidak ada duplikat.
2. SHA-256 dan ukuran semua 26.536 file.
3. Konsistensi total byte/jumlah file.
4. Jumlah Java, stub, dan namespace aplikasi.
5. Semua XML berhasil diparse.
6. Metadata arsip: 400, encrypted, satu entry, path aman pada bundel; payload CRC sengaja tidak diuji.
7. Seluruh chunk PNG memiliki length/CRC valid dan IEND di ujung berkas.
8. GZIP dapat didekompresi dan ukuran hasil sesuai.
9. Batas halaman/lacing table seluruh Ogg valid.
10. Batas direktori/tabel seluruh TTF valid.
11. Level metadata 1–64, hanya 1–20 mempunyai 20 ZIP bundel.
12. Hitungan manifest component/exported konsisten.
13. OAuth metadata pada laporan disamarkan; jumlah metadata konsisten.
14. Hitungan indeks package/binary/mismatch konsisten.

Test ini adalah **test integritas laporan dan struktur container**, bukan unit/instrumentation test game. Tidak ada test APK yang lulus karena APK tidak dijalankan. Semua XML parse sukses bukan bukti resource build sukses; PNG CRC valid bukan jaminan gambar benar secara semantik.

Lingkungan tidak menyediakan Java/Gradle wrapper/Android toolchain, `apktool`, atau `jadx` executable saat diperiksa. `openssl`, Git, Python dan ripgrep dipakai untuk analisis lokal. Tidak menginstal toolchain/SDK besar untuk memberi kesan build tersedia padahal proyek asal tidak ada.

## 14. Rencana tindak lanjut

### Tahap 0 — lindungi kredensial dan alur autentikasi

- Hentikan forwarding ID token ke URL arbitrer. Gunakan allowlist exact host HTTPS; untuk handoff web, gunakan kode sekali pakai singkat yang ditukar server-side.
- Tinjau dan cabut/rotasi rahasia OAuth yang terungkap melalui konsol pemilik; jangan sekadar menghapus dari commit terbaru.
- Nonaktifkan BODY logging release dan redact Authorization/token/PII pada logger yang tetap diperlukan.
- Audit akses server menggunakan penanda tidak sensitif; jangan menyalin token pengguna ke laporan.

### Tahap 1 — amankan paket konten

- Migrasi metadata/API/ZIP ke HTTPS dan default cleartext off.
- Terapkan signature paket/manifest menggunakan public verification key, batas ukuran/entry/rasio ekspansi, canonical destination checks, dan larangan symlink/path traversal.
- Unduh ke staging unik, validasi semua file, lalu aktifkan secara atomik. Jangan tandai versi sinkron sebelum validasi selesai.
- Uji skenario arsip rusak, putus jaringan, disk penuh, file lama tersisa, HTTP error dan restart di tengah proses.

### Tahap 2 — pulihkan build yang dapat direproduksi

- Peroleh source/project asli dan hak penggunaan; identifikasi dependency persis.
- Pisahkan dependency official dari first-party code; pin versi dan buat SBOM berbasis artifact resmi.
- Buat baseline test perilaku format level, boss/checkpoint, hint, nyawa dan migrasi Room.
- Perbaiki stub/obfuscation/import hanya dengan acuan bytecode/source yang dapat diverifikasi.

### Tahap 3 — kompatibilitas Android

- Uji API 19, 23, 26, 28/29, 30, 31, 33, 34, serta OS lebih baru yang hendak didukung.
- Beri flag PendingIntent sesuai mutability minimum.
- Nyatakan foreground service type dan izin yang relevan, atau migrasikan unduhan ke mekanisme yang cocok.
- Gunakan registration API receiver modern dengan flag yang benar untuk jenis broadcast; cek exemption broadcast sistem, bukan mengganti flag secara buta.
- Gunakan Photo Picker/MediaStore atau app-specific storage sesuai kebutuhan.
- Deklarasikan/minta izin notification jika fitur membutuhkan; pastikan game tetap bekerja ketika ditolak.

### Tahap 4 — stabilitas, privasi, dan rilis

- Durable cloud-save queue, idempotency, retry/backoff, validasi response serta konflik merge.
- DB I/O off main thread; hindari preference commit pada jalur animasi/input.
- Consent/data inventory untuk setiap SDK; evaluasi audience anak, retensi/penghapusan dan hak pengguna sesuai konteks pemilik.
- Audit lisensi font/gambar/library dan provenance.
- CI build/lint/test/security scan; signing di sistem rilis aman; uji tertutup sebelum produksi.

Tidak diberi estimasi durasi pasti karena source asli, akses backend, legal rights dan target fitur belum tersedia.

## 15. Cara menavigasi seluruh bukti

| Pertanyaan | Berkas rujukan |
|---|---|
| “Apakah file X masuk pemeriksaan?” | `data/files.csv`: satu baris per file, path/hash/ukuran |
| “Di package mana logika tersembunyi?” | `ATLAS_PACKAGE.md`, `data/packages.csv`, `data/sources.csv` |
| “Apa deklarasi kelas aplikasi X?” | `ATLAS_APLIKASI.md`, kemudian file source/Smali asli |
| “Metode decompile mana yang gagal?” | Filter `data/patterns.csv` kategori `decompiler_stub` |
| “Apa semua komponen/izin/deep link?” | `data/components.csv`, `data/summary.json`, manifest asli |
| “Library versi berapa?” | `data/dependencies.csv`; jangan menebak yang tidak teridentifikasi |
| “Apa isi struktur aset/level?” | `data/resource-groups.csv`, `data/levels.csv`, `data/archives.csv` |
| “Semua file gambar?” | `data/images.csv` dan `data/files.csv` |
| “Biner tidak dikenal?” | `data/binary-types.csv`, perhatikan signature detector sederhana |
| “Semua host?” | `data/domains.csv`; daftar literal, bukan observed traffic |
| “Skema database?” | `data/sql.csv`, Room `_Impl.java` dan migrasi |
| “Risiko mana harus dibenahi dulu?” | `TEMUAN.md` |
| “Bagaimana reproduksi/apa belum diuji?” | `README.md`, bagian cakupan dan validasi di laporan ini |

**Penutup:** seluruh isi snapshot sekarang mempunyai indeks yang dapat ditelusuri dan audit dapat direproduksi. Yang belum tersedia adalah pembuktian runtime, keaslian dan kelengkapan APK sumber, implementasi server, serta review semantik manual setiap instruksi dependency. Batas tersebut tidak dapat digantikan dengan klaim “100%” tanpa bukti tambahan.
