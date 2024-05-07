import 'package:flutter/material.dart';
import '/model/pegawai.dart';

class PegawaiDetail extends StatefulWidget {
  final Pegawai pegawai;

  const PegawaiDetail(
      {super.key,
      required this.pegawai}); // Menerima parameter pegawai saat membuat instance dari kelas PegawaiDetail

  @override
  State<PegawaiDetail> createState() =>
      _PegawaiDetailState(); // Membuat instance dari _PegawaiDetailState yang merupakan turunan dari State<PegawaiDetail>
}

class _PegawaiDetailState extends State<PegawaiDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text(
                "Detail Pegawai RS")), // Menampilkan judul "Detail Pegawai RS" pada AppBar
        body: Column(
          // Menggunakan Column sebagai tata letak utama
          // MainAxisAlignment.spaceEvenly: Membuat ruang kosong yang merata di antara widget anak
          children: [
            const SizedBox(
                height: 50), // Memberikan jarak vertikal sebesar 50 piksel
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                          textAlign: TextAlign.left,
                          'Nama'), // Menampilkan label "Nama"
                      Text(
                          textAlign: TextAlign.left,
                          'NIP'), // Menampilkan label "NIP"
                      Text(
                          textAlign: TextAlign.left,
                          'Email'), // Menampilkan label "Email"
                      Text(
                          textAlign: TextAlign.left,
                          'Tanggal Lahir'), // Menampilkan label "Tanggal Lahir"
                      Text(
                          textAlign: TextAlign.left,
                          'Nomor Telepon') // Menampilkan label "Nomor Telepon"
                    ]),
                const Column(children: [
                  Text(' : '), // Menampilkan tanda ":" sebagai pemisah
                  Text(' : '), // Menampilkan tanda ":" sebagai pemisah
                  Text(' : '), // Menampilkan tanda ":" sebagai pemisah
                  Text(' : '), // Menampilkan tanda ":" sebagai pemisah
                  Text(' : ') // Menampilkan tanda ":" sebagai pemisah
                ]),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(widget.pegawai.nama), // Menampilkan nilai nama pegawai
                    Text(widget.pegawai.nip), // Menampilkan nilai NIP pegawai
                    Text(widget
                        .pegawai.email), // Menampilkan nilai email pegawai
                    Text(widget.pegawai
                        .tgllahir), // Menampilkan nilai tanggal lahir pegawai
                    Text(widget.pegawai
                        .nmrtlp) // Menampilkan nilai nomor telepon pegawai
                  ],
                )
              ],
            ),
            const SizedBox(
                height: 50), // Memberikan jarak vertikal sebesar 50 piksel
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    onPressed:
                        () {}, // Fungsi yang akan dijalankan saat tombol ditekan (belum diimplementasikan)
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors
                            .green), // Mengubah warna latar belakang tombol menjadi hijau
                    child: const Text(
                        "Ubah")), // Menampilkan teks "Ubah" pada tombol
                ElevatedButton(
                    onPressed:
                        () {}, // Fungsi yang akan dijalankan saat tombol ditekan (belum diimplementasikan)
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors
                            .red), // Mengubah warna latar belakang tombol menjadi merah
                    child: const Text(
                        "Hapus")), // Menampilkan teks "Hapus" pada tombol
              ],
            )
          ],
        ));
  }
}
