# Pembukaan dan dekripsi seluruh 400 ZIP level

**Hasil: 400/400 ZIP berhasil dibuka, 0 gagal.**  
**Tanggal:** 15 Oktober 2026 UTC.  
**Acuan daftar file yang dipindai:** HEAD `e313da3a3a8aab8bf7797398be714e28197b2f5d`.  
**Folder hasil lengkap:** `/home/user/tebak-gambar-decrypted/` — di luar repository Git.

Laporan ini menindaklanjuti audit awal yang belum membuka payload ZIP terenkripsi. Batasan lama mengenai payload tersebut sekarang **telah diselesaikan untuk semua 400 ZIP bundel**. Tidak berarti seluruh perilaku APK/server telah diuji.

## 1. Cakupan pencarian: luar sampai dalam

1. Membaca seluruh **26.562 file terlacak** pada HEAD saat pencarian, mencakup 26.536 file snapshot aplikasi dan 26 artefak audit yang sudah di-push.
2. Mencoba pemindaian teks UTF-8 tanpa null byte: 25.243 file, termasuk Java, Smali, XML, properties dan laporan audit yang relevan.
3. Mengindeks 1.008 kemunculan pola terkait key/password/ZIP/MD5/AES dalam 287 file. Ini indeks pencarian, **bukan 1.008 credential berbeda**. Lokasi disimpan tanpa menyalin baris berisi rahasia OAuth.
4. Menelusuri implementasi Java dan Smali untuk menentukan key, IV, nama arsip, password dan parser metadata yang benar.
5. Mengurutkan folder level numerik 1–20, kemudian filename ZIP secara leksikografis di setiap level. Setiap ZIP dibuka **satu per satu**, dengan catatan bernomor `001/400` sampai `400/400`.
6. Membuka envelope ZIP, memvalidasi autentikasi AES, mendekripsi nama entry, memvalidasi field metadata, membaca PNG, memeriksa semua chunk CRC dan mendekode seluruh pixel.

Daftar path berasal dari commit HEAD; hash mencerminkan byte working tree saat pemindaian, bukan pengambilan langsung blob Git. Script dekripsi baru yang belum di-commit tidak termasuk daftar HEAD tersebut. Tidak ada klaim membaca manual setiap baris seluruh SDK; pemindaian seluruh file otomatis dilengkapi penelusuran manual jalur relevan.

## 2. Kunci/password yang ditemukan

### Sumber kunci konten lokal

| Unsur | Lokasi bukti |
|---|---|
| `secretkey` | `resources/res/values/strings.xml:443` |
| `ivkey` | `resources/res/values/strings.xml:237` |
| Salinan key pada MCrypt | `sources/y8/k.java:17` / field `f37055d` |
| Salinan IV pada MCrypt | `sources/y8/k.java:14` / field `f37052a` |
| Cipher metadata | `sources/y8/k.java:63`: `AES/CBC/NoPadding` |
| Fungsi MD5 | `sources/y8/y.java:459–467` |
| Helper metadata | `sources/y8/y.java:659–660` |
| Alur pemuatan soal sebenarnya | `smali/com/tebakgambar/model/Question.smali:387–690` |

Key dari resource cocok dengan key MCrypt; IV dari resource juga cocok. **Key adalah 32 byte ASCII, bukan hasil hex-decode string 32 karakter**. IV adalah 16 byte ASCII. Karena itu cipher metadata merupakan AES-256-CBC.

Nilai key/IV konten yang dipulihkan tersedia di `key-material.json` dalam folder hasil. Itu kunci proteksi konten offline, **bukan** token akun, private signing key, atau OAuth consumer secret. Credential layanan lain tidak digunakan.

### Rumus tepat

Untuk global question index `i` dari 0 sampai 399:

```text
nama_zip = lowercase_hex(MD5(ASCII(secretkey + decimal(i)))) + ".zip"
password_zip = lowercase_hex(MD5(ASCII(decimal(i) + secretkey)))
```

- Tidak ada separator di antara secret dan angka.
- Password yang diberikan ke pembaca ZIP adalah **ASCII string hex lowercase**, bukan 16 byte digest mentah.
- Nama entry internal adalah hex ciphertext AES-CBC.
- Decode hex → decrypt dengan key/IV tersebut → Java `trim()` → pecah dengan `#`.
- Java trim menghapus karakter U+0000 sampai U+0020 pada awal/akhir. Python `.strip()` biasa tidak identik karena null byte tidak dihapus; script mereplikasi perilaku Java secara eksplisit.
- Metadata hasil: `id#type#level#answer`. Implementasi Android menghapus `.png` dari bagian jawaban jika ada.

Contoh hasil pertama menurut index:

```text
0#biasa#1#jambu batu
1#biasa#1#pisau tajam
2#biasa#1#jam tangan
```

`archive-passwords.csv` berisi **password aktual masing-masing dari 400 ZIP**, dipetakan ke path dan global index. Tidak dilakukan dictionary attack atau brute force. Enumerasi 400 index yang memang dibundel digunakan untuk merekonstruksi penamaan deterministik aplikasi.

## 3. Lapisan arsip dan hasil di dalamnya

| Pemeriksaan | Hasil |
|---|---:|
| ZIP bundel ditemukan | 400 |
| Filename cocok dengan derivasi MD5 | 400 |
| Password diterima dan isi dibaca sampai EOF | 400 |
| Autentikasi AES ZIP valid | 400 |
| Metadata berhasil didekripsi dan diparse | 400 |
| ID/level/folder/nama arsip konsisten | 400 |
| PNG valid dan pixel berhasil didekode | 400 |
| Gambar unik menurut SHA-256 | 400 |
| ZIP gagal | **0** |
| Total byte gambar | 4.259.250 |
| Tipe biasa | 370 |
| Tipe raja | 30 |
| Gambar 400 × 400 | 370 |
| Gambar 400 × 480 | 30 |
| PNG dengan trailing bytes | 0 |
| Payload berupa nested ZIP | 0 |

### Dua mode kompresi, satu keluarga enkripsi ZIP

Semua memakai **WinZip AES-256, versi AE-2**:

- 204 entry menggunakan **Deflate**.
- 196 entry menggunakan **Stored** / tanpa kompresi.

Percobaan pertama menolak 196 entry Stored karena guard awal terlalu ketat mengharuskan Deflate. Inspeksi header memperlihatkan ini perbedaan kompresi, **bukan password salah**. Setelah pembaca menerima kedua metode yang memang ada di repo, seluruh 400 selesai. Log final hanya mencatat proses lengkap yang berhasil; hasil percobaan awal tidak diperlakukan sebagai kegagalan dekripsi final.

AE-2 memvalidasi integritas melalui authentication code/HMAC. Tidak dilaporkan “CRC ZIP semua lulus” karena field CRC ZIP AE-2 bukan pemeriksaan payload independen seperti ZIP tradisional. Sebagai pemeriksaan terpisah, **CRC semua chunk PNG** juga diuji.

### PNG sampai lapisan terakhir yang diperiksa

Seluruh 400 payload mempunyai susunan chunk:

```text
PNG signature → IHDR → PLTE → IDAT → IEND
```

Panjang dan CRC setiap chunk valid. Pillow menjalankan `verify()` lalu membuka ulang dan `load()` agar seluruh pixel benar-benar didekode. Tidak ada data tambahan setelah IEND, tidak ada nested archive sebagai payload, dan tidak ada chunk teks tambahan di 400 gambar tersebut.

Ini **tidak** merupakan pembuktian ketiadaan steganografi pada pixel atau sertifikasi keamanan semua image decoder. Pemeriksaan visual manual dilakukan pada contoh gambar, bukan setiap satu dari 400 gambar; seluruhnya dapat dibuka lewat galeri.

## 4. Distribusi per level

| Level | ZIP/PNG | Biasa | Raja |
|---:|---:|---:|---:|
| 1–10, masing-masing | 20 | 19 | 1 |
| 11–20, masing-masing | 20 | 18 | 2 |
| **Total 20 level** | **400** | **370** | **30** |

Raja pertama terdapat pada index 19, lalu 39, 59, dan seterusnya sampai 199. Mulai level 11 terdapat tipe raja pada index checkpoint dan akhir level: 209/219, 229/239, dan seterusnya hingga 389/399. Ini menambahkan bukti dari payload untuk mekanisme checkpoint yang sebelumnya hanya ditelusuri dari kode.

Penanda `isBoss` pada struktur urutan permainan tidak harus identik dengan seluruh label `raja` pada metadata aset; laporan membedakan keduanya.

## 5. Isi folder hasil

```text
/home/user/tebak-gambar-decrypted/
├── index.html                 # Galeri 400 soal, filter level/cari, buka/tutup jawaban
├── images/level-01/...         # 400 PNG, nama output aman menurut ID
├── details/question-000.json  # 400 JSON bukti per arsip, metadata dan chunk gambar
├── results.csv                # Semua mapping arsip, jawaban, tipe, hash dan gambar
├── archive-passwords.csv      # Password aktual masing-masing ZIP
├── key-material.json          # Key/IV konten lokal, bukan credential akun
├── processing.log             # 400 baris proses berurutan
├── summary.json               # Ringkasan agregat
├── failures.json              # []
├── repository-scan.csv        # Path/ukuran/hash/hasil pindai seluruh 26.562 file HEAD
├── key-references.csv         # Lokasi pola key/password/AES/ZIP
├── validation.txt             # Hasil 10 test integrasi/negative control
└── LAPORAN_DEKRIPSI.md         # Salinan laporan ini untuk paket unduhan
```

Gambar tidak diekstrak menggunakan nama entry atau jawaban sebagai path. Output dikonstruksi sebagai `images/level-{level}/question-{id}.png`, sehingga metadata arsip tidak bisa menulis path arbitrer. Script membatasi ukuran entry dan total ekstraksi, serta menolak output directory tidak kosong dan output di dalam repository.

Pada tahap dekripsi, media, jawaban dan password disimpan di luar Git. **Atas permintaan eksplisit pengguna untuk push semuanya**, salinan seluruh hasil final kemudian dimasukkan ke `audit/decrypted-levels/`, termasuk galeri, 400 PNG, metadata, jawaban, password dan key/IV konten lokal. Paket unduhan ada di `audit/downloads/tebak-gambar-400-zip-terbuka.zip`. Cache dependensi dan percobaan gagal tidak dipublikasikan. Ini publikasi yang diminta pengguna, bukan perilaku otomatis script ekstraksi.

## 6. Validasi: 10 test integrasi lulus

1. Cakupan path tepat 400 ZIP dan index tepat 0–399, tidak ada duplikat/kegagalan.
2. Hash 400 ZIP asli tetap cocok dengan inventaris sebelum dekripsi.
3. Derivasi filename serta metadata semua arsip konsisten.
4. Pembacaan ulang ZIP dengan password benar menghasilkan byte identik dengan PNG output.
5. **Password salah ditolak untuk semua 400 ZIP**.
6. **Perubahan satu byte tag autentikasi pada salinan in-memory ditolak untuk semua 400 ZIP** dengan error HMAC; file asli tidak dimodifikasi.
7. Seluruh PNG lolos pemeriksaan struktur/CRC dan decoding pixel penuh.
8. Distribusi tipe, kompresi, dimensi dan hash unik konsisten.
9. Seluruh log 400 arsip, 400 JSON dan 400 gambar lengkap.
10. Ringkasan dan inventaris pencarian repository konsisten.

Test integritas audit awal juga tetap lulus (14 test). Jadi ada 14 test audit awal + 10 test khusus dekripsi, **bukan** 24 test runtime aplikasi Android.

## 7. Reproduksi

Dependensi opsional dipin di `audit/tools/requirements-decrypt.txt`. Pada sesi ini dipasang di `/home/user/.cache/tebak-zip-deps`, bukan ke source/vendor repository.

```bash
python3 -m pip install --target /home/user/.cache/tebak-zip-deps \
  -r audit/tools/requirements-decrypt.txt

PYTHONPATH=/home/user/.cache/tebak-zip-deps python3 -B \
  audit/tools/decrypt_levels.py --out /home/user/tebak-gambar-decrypted-ulang

PYTHONPATH=/home/user/.cache/tebak-zip-deps python3 -B \
  audit/tools/test_decrypt_levels.py --out /home/user/tebak-gambar-decrypted-ulang
```

Gunakan direktori output baru/kosong. Test jumlah file scan pada versi ini mengacu HEAD awal sesi yang berisi 26.562 file; bila artefak tambahan kemudian di-commit, sesuaikan ekspektasi snapshot pencarian, bukan angka 400 aset bundel.

## 8. Implikasi dan batas lanjutan

Pembuktian ini menguatkan SEC-06: proteksi konten yang seluruh key/password derivation-nya dikirim bersama klien dapat dipulihkan sepenuhnya dari repo lokal. AES-nya tidak “dipecahkan”; kunci yang memang disertakan aplikasi digunakan untuk membaca data seperti yang dilakukan aplikasi.

Tidak dilakukan akses API, pencobaan token/OAuth, brute force, eksekusi APK, atau pengubahan progres pengguna. Publikasi hasil final ke GitHub dilakukan sebagai tindak lanjut atas permintaan eksplisit pengguna. Hak penggunaan/distribusi gambar, soal, font dan merek tetap perlu mengikuti otorisasi pemilik. Tidak ada jaminan mengenai level di luar 20 level bundel karena ZIP-nya tidak ada di repo.
