# Audit repository Tebak Gambar 1.44.2l

## Mulai dari sini

**[Buka laporan utama: LAPORAN_REPO.md](LAPORAN_REPO.md)**

Paket ini berisi analisis statis berbahasa Indonesia atas snapshot repository `otwmax2/Tebak-Gambar-1.44.2l`, commit `50a31d40e67903255208218c93c7d92c64781653`, diperiksa 15 Oktober 2026 UTC. Checkout sudah tersedia di workspace; tidak dibuat clone duplikat.

**Kesimpulan singkat:** ini arsip hasil dekompilasi APK, bukan project Android siap build. Seluruh file snapshot terinventarisasi, tetapi tidak seluruh perilaku runtime dapat diverifikasi dari hasil dekompilasi.

## Pembaruan: dekripsi seluruh ZIP selesai

**[LAPORAN_DEKRIPSI.md](LAPORAN_DEKRIPSI.md): 400/400 ZIP dibuka, 400 metadata/jawaban dipulihkan, 400 PNG terverifikasi, 0 gagal.** Script lanjutan `tools/decrypt_levels.py` dan `tools/test_decrypt_levels.py` memakai dependency opsional pada `tools/requirements-decrypt.txt`. Hasil kerja media, password dan jawaban lengkap berada di `/home/user/tebak-gambar-decrypted/`. Atas permintaan eksplisit pengguna untuk push semuanya, salinan hasil final tersedia di [decrypted-levels/](decrypted-levels/index.html), termasuk 400 gambar dan seluruh metadata/jawaban/password/key konten. Paket unduhan: [ZIP hasil lengkap](downloads/tebak-gambar-400-zip-terbuka.zip). Cache dependensi dan percobaan gagal tidak disertakan. Ringkasan/bukti tanpa jawaban di `data/decryption-summary.json`, `data/decryption-results.csv`, dan `data/decryption-validation.txt`. Batas “payload belum dibuka” pada uraian audit awal di bawah telah diselesaikan oleh tindak lanjut ini. APK/backend tetap belum dijalankan/diuji.

## Dokumen

| Dokumen | Isi |
|---|---|
| [LAPORAN_REPO.md](LAPORAN_REPO.md) | Inventaris, arsitektur, gameplay, DB, API, aset, dependency, build, keamanan, validasi dan rencana kerja |
| [TEMUAN.md](TEMUAN.md) | 14 temuan berprioritas, bukti path/baris, dampak, prasyarat, batas kepastian, rekomendasi dan uji penerimaan |
| [ATLAS_APLIKASI.md](ATLAS_APLIKASI.md) | 272 file Java aplikasi/pendukung: nama asal, import internal, deklarasi metode dan baris sumber |
| [ATLAS_PACKAGE.md](ATLAS_PACKAGE.md) | Semua 634 package Java: jumlah file/baris/stub dan contoh nama kelas asal |

Atlas dibangkitkan otomatis. Ia membantu navigasi, bukan pengganti membaca implementasi. Deklarasi berbasis regex tidak menangkap semua bentuk Java dan bukan hasil compiler/type resolver.

## Data mesin: semua 18 berkas

| Berkas | Cakupan / catatan |
|---|---|
| [summary.json](data/summary.json) | Statistik agregat, identitas manifest, SDK, izin, pola dan file terbesar |
| [files.csv](data/files.csv) | **26.536 file**: path, byte, SHA-256, ekstensi, jumlah baris bila diklasifikasi teks |
| [sources.csv](data/sources.csv) | **11.953 Java**: package, komentar nama asal, baris, hitungan import/deklarasi heuristik, stub |
| [packages.csv](data/packages.csv) | **634 package** dan metrik agregat |
| [components.csv](data/components.csv) | **76 komponen** manifest, exported/permission, action, data deep link, authority |
| [xml.csv](data/xml.csv) | **865 XML**: hasil parse, root, jumlah elemen/error |
| [archives.csv](data/archives.csv) | **400 ZIP**: nama entry, ukuran header, status encrypted, path, CRC payload yang tidak diuji |
| [images.csv](data/images.csv) | **891 PNG**: signature/header dan dimensi; validasi CRC seluruh chunk dilakukan test terpisah |
| [dependencies.csv](data/dependencies.csv) | **100 metadata** `.version`/`.properties`; termasuk OAuth config yang nilainya disamarkan |
| [patterns.csv](data/patterns.csv) | Lokasi pola decompiler, logging, WebView, MD5, AES, dynamic Dex; **bukan daftar vulnerability terverifikasi** |
| [domains.csv](data/domains.csv) | **54 host literal** HTTP(S), hitungan/file dan contoh lokasi; termasuk schema XML/dokumentasi |
| [sql.csv](data/sql.csv) | Lokasi DDL CREATE/ALTER/DROP dari seluruh Java, termasuk library |
| [source-smali-diff.csv](data/source-smali-diff.csv) | **507 mismatch path literal**: 84 Java-only dan 423 Smali-only; rename/inner class dapat menjelaskan mismatch |
| [resource-groups.csv](data/resource-groups.csv) | Resource dikelompokkan menurut folder, jumlah dan byte |
| [binary-types.csv](data/binary-types.csv) | **1.321 file di luar klasifikasi teks scanner**, signature sederhana; bukan semua benar-benar biner |
| [levels.csv](data/levels.csv) | **64 definisi level**, versi, jumlah ZIP bundel dan scheme download |
| [validation.txt](data/validation.txt) | Hasil terakhir 14 test integritas laporan/container |
| [reproducibility.txt](data/reproducibility.txt) | Hasil pembandingan ulang seluruh keluaran inventory ke direktori temporer |

`source_exists` pada `components.csv` hanya mengecek nama berkas Java literal; false tidak otomatis berarti class tidak ada di bytecode. Notasi nested class, transformasi package, dan artefak decompiler harus ditelusuri lebih lanjut.

`binary-types.csv` menggunakan signature detector sederhana yang hanya mengenali PNG, ZIP, Ogg, SFNT/OTF, GZIP, Java class dan ART profile. `unidentified-by-simple-signature` bukan indikasi malware. Berkas metadata `.u`/`.j0` dan sertifikat dapat masuk kategori ini.

File CSV mengandung nama path/class/URL/SQL dari repository. Buka sebagai data, bukan perintah; jangan mengaktifkan macro atau fitur eksekusi spreadsheet. Tidak disarankan mengirim seluruh paket audit ke layanan publik lain karena source aslinya mengandung credential.

## Reproduksi

Prasyarat: Python 3.9+ dan Git, dijalankan dari root repository. Tidak memerlukan dependency pip/npm, jaringan, Java, Android SDK, atau build aplikasi.

```bash
python3 audit/tools/inventory.py
python3 audit/tools/atlas.py
python3 audit/tools/test_audit.py
```

Tools:

- [`tools/inventory.py`](tools/inventory.py): mengambil path dari commit acuan, membaca byte checkout, hash, parse XML, mengindeks Java/Smali/URL/pola, metadata ZIP dan PNG. Tidak mengekstrak/dekripsi arsip atau menghubungi API.
- [`tools/atlas.py`](tools/atlas.py): membangun atlas dan indeks resource/binary/level dari data inventaris.
- [`tools/test_audit.py`](tools/test_audit.py): 14 test untuk coverage, hash, konsistensi hitungan, XML, ZIP metadata, PNG chunk CRC, GZIP, Ogg container bounds, SFNT table bounds dan penyamaran metadata OAuth.

Output inventory dapat dialihkan:

```bash
python3 audit/tools/inventory.py \
  --ref 50a31d40e67903255208218c93c7d92c64781653 \
  --out /home/user/audit-recheck
```

**Penting:** `--ref` memilih daftar path; kontennya tetap dibaca dari working tree. Snapshot awal bersih saat pemeriksaan. Jika source diubah kemudian, hash/hasil akan mengikuti source yang berubah dan harus dilabel ulang; bukan ekstraksi langsung blob Git commit lama. Test angka tetap dalam paket ini ditujukan untuk snapshot acuan, bukan semua versi repo masa depan.

Rerun inventory/atlas menimpa berkas data/atlas yang dibangkitkan, tidak menimpa source aplikasi. Narasi laporan dan temuan disusun dari hasil analisis, tidak otomatis berubah hanya karena generator dijalankan.

## Batas cakupan eksplisit

### Dilakukan

- Inventaris **100% path file terlacak** pada commit awal, beserta hash/ukuran.
- Pemindaian seluruh file yang diklasifikasi teks oleh scanner: 25.215 file / 5.030.636 baris.
- Metadata seluruh Java dan atlas seluruh package.
- Penelusuran mendalam alur startup, gameplay, state, API, deep link, konten unduhan, storage dan beberapa batas SDK.
- Konfirmasi Smali untuk jalur utama yang gagal didekompilasi serta flag PendingIntent download.
- Validasi semua XML dan struktur container tertentu untuk media/aset.

### Tidak dilakukan / belum dapat dijamin

- Review manual setiap baris, metode, instruksi Smali atau seluruh internal SDK.
- Build, lint Android, emulator/device test, unit/instrumentation test aplikasi, memory/performance profiling.
- Pembukaan/dekripsi gambar dan jawaban di 400 ZIP terenkripsi; payload CRC ZIP belum diuji.
- Pemeriksaan visual semua gambar, playback audio, rendering font atau audit codec/parser native.
- Uji penetrasi backend, penggunaan credential tertanam, validasi Firebase rules atau pemeriksaan trafik aktual.
- Pencocokan decompile dengan APK resmi, verifikasi APK signing scheme, kelengkapan semua split, atau pemulihan source asli.
- SCA/CVE database scan terkini, lisensi legal final atau penetapan hak distribusi.

Karena itu frasa “seluruh repo sudah diinventarisasi” **tidak sama dengan** “100% semua perilaku dan keamanan sudah terbukti”.

## Perubahan dan publikasi

Semua artefak repository baru ada di `audit/`; file aplikasi asli tidak diedit. Audit awal menggunakan Python stdlib tanpa dependency tambahan, kemudian tahap dekripsi memakai dependency opsional yang dipasang di cache, bukan di Git. Audit awal sudah di-commit/push; pengguna kemudian meminta publikasi seluruh hasil dekripsi, sehingga salinan hasil final dan paket ZIP juga disertakan. Tidak dibuat PR atau merge ke master. Rahasia layanan asli tidak dihapus/dirotasi karena itu memerlukan tindakan pemilik di layanan resmi; dokumen ini tidak mengklaim temuan aplikasi telah diperbaiki.
