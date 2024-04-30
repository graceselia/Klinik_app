// Mengimpor paket flutter/material.dart yang diperlukan untuk membangun UI dengan Flutter.
import 'package:flutter/material.dart';

// Mengimpor model poli.dart yang berisi definisi Poli.
import '../model/poli.dart';

// Mengimpor halaman poli_detail.dart yang digunakan untuk menampilkan detail poli.
import 'poli_detail.dart';

// Mengimpor item poli_item.dart yang digunakan untuk menampilkan item poli dalam daftar.
import 'poli_item.dart';

// Mengimpor form poli_form.dart yang digunakan untuk menambahkan poli baru.
import 'poli_form.dart';

// Kelas PoliPage adalah StatefulWidget yang menampilkan halaman daftar poli.
class PoliPage extends StatefulWidget {
  const PoliPage({Key? key}) : super(key: key);

  @override
  State<PoliPage> createState() => _PoliPageState();
}

// Kelas _PoliPageState adalah State dari PoliPage.
class _PoliPageState extends State<PoliPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Data Poli"), // Menampilkan judul halaman.
        actions: [
          GestureDetector(
            child: const Icon(Icons.add), // Menampilkan ikon tambah.
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        PoliForm()), // Navigasi ke halaman PoliForm saat ikon tambah ditekan.
              );
            },
          ),
        ],
      ),
      body: ListView(
        children: [
          PoliItem(
              poli: Poli(
                  namaPoli:
                      "Poli Anak")), // Menampilkan item poli dengan nama "Poli Anak".
          PoliItem(
              poli: Poli(
                  namaPoli:
                      "Poli Kandungan")), // Menampilkan item poli dengan nama "Poli Kandungan".
          PoliItem(
              poli: Poli(
                  namaPoli:
                      "Poli Gigi")), // Menampilkan item poli dengan nama "Poli Gigi".
          PoliItem(
              poli: Poli(
                  namaPoli:
                      "Poli THT")), // Menampilkan item poli dengan nama "Poli THT".
        ],
      ),
    );
  }
}
