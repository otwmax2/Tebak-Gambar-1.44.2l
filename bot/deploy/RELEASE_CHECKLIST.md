# Catatan rilis — diisi operator pada host sendiri

Jangan menulis token, isi .env, data export pemain atau URL API berkunci di sini.

- Tanggal/jam dan timezone: BELUM DIISI
- Commit/artifact image: BELUM DIISI
- Jalur: Docker Compose / systemd (pilih satu)
- Project/volume atau DATABASE_PATH: catat secara privat pada host
- Backup pre-release di storage privat terpisah: BELUM DIUJI
- Doctor local (akun service yang sama): BELUM DIUJI PADA HOST
- Doctor --telegram: BELUM DIUJI
- Instance lama dihentikan: BELUM DIKONFIRMASI
- Daftar acceptance [PRODUCTION.md](../PRODUCTION.md): BELUM DIUJI LIVE
- Backup/restore environment uji host: BELUM DIUJI PADA HOST
- Operator rollback dan artifact sebelumnya: BELUM DIISI
- Keputusan membuka bot publik: **BELUM DISETUJUI**

Template ini bukan bukti deployment. Jangan mengganti status menjadi PASS berdasarkan
simulator lokal atau unit test. Bukti lokal tersedia di ../VALIDATION.md.

## Tambahan acceptance 1.1.0 di host nyata

- [ ] Seluruh 117 tes lokal + format/typecheck/aset/build lulus; audit ditinjau.
- [ ] Stop sebelum update, backup privat tidak overwrite, snapshot diuji di lingkungan terpisah.
- [ ] Instance kedua di path DB sama ditolak; jangan menghapus file `.instance.sqlite` untuk memaksa start. Token tidak dipakai server/DB lain.
- [ ] Status/achievements/quote/cancel selfie tidak memperlihatkan data personal di grup.
- [ ] Callback photo/hint mendapat ACK, tombol kedaluwarsa/akun lain ditolak.
- [ ] Daily/selfie cap dan UTC-day benar; waktu host sinkron.
- [ ] Ctrl+C/SIGTERM tidak meninggalkan poller; restart membaca progres lama; pending outbox diteruskan.
- [ ] Untuk Android, uji launcher/tmux/reboot dan pembatasan baterai secara nyata; jangan menganggap hasil Linux sebagai hasil HP.
