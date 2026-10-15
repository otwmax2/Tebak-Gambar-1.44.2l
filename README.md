# Tebak Gambar 1.44.2l — arsip Android dan bot Telegram

Repository ini mempertahankan hasil dekompilasi APK asli beserta audit dan hasil pembukaan seluruh 400 ZIP. Implementasi baru **bot Telegram TypeScript/Node.js + grammY** berada di [`bot/`](bot/README.md).

- [Panduan bot, konfigurasi dan deployment](bot/README.md).
- [Pemetaan fitur Android → Telegram dan batas kesetaraan](bot/FEATURE_PARITY.md).
- [Laporan pengujian bot](bot/VALIDATION.md).
- [Audit repository Android](audit/LAPORAN_REPO.md).
- [Pembukaan 400/400 ZIP](audit/LAPORAN_DEKRIPSI.md).

Bot mandiri memakai **semua 400 gambar dan jawaban** dari 20 level bundel. Pilihan pengguna: mandiri/offline content + long polling. Tidak bergantung pada API game lama, iklan Google Play, Firebase atau rahasia OAuth di arsip Android.

> Bot bukan transliterasi ribuan kelas SDK Android. Fitur yang tidak mempunyai padanan Telegram dijelaskan, bukan diklaim berhasil dipindahkan 1:1. Token Telegram dikonfigurasi secara lokal melalui environment; jangan commit atau kirim token lewat chat.

Hak distribusi aset, font, soal, merek dan komponen asli tetap mengikuti izin pemilik. Tidak ada lisensi baru yang diberikan atas materi asli hanya karena adanya implementasi bot.
