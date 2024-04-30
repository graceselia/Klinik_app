// Mengimpor paket flutter/material.dart yang diperlukan untuk membangun UI dengan Flutter.
import 'package:flutter/material.dart';

// Kelas PoliForm adalah StatefulWidget yang digunakan untuk menampilkan formulir tambah poli.
class PoliForm extends StatefulWidget {
  const PoliForm({Key? key}) : super(key: key);

  @override
  _PoliFormState createState() => _PoliFormState();
}

// Kelas _PoliFormState adalah State dari PoliForm.
class _PoliFormState extends State<PoliForm> {
  final _formKey = GlobalKey<FormState>(); // Kunci form untuk validasi.

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text("Tambah Poli")), // Menampilkan judul halaman.
      body: SingleChildScrollView(
        child: Form(
          key: _formKey, // Menghubungkan kunci form dengan form widget.
          child: Column(
            children: [
              TextFormField(
                decoration: const InputDecoration(
                    labelText:
                        "Nama Poli"), // Menampilkan label dan input teks untuk nama poli.
              ),
              SizedBox(
                  height:
                      20), // Menambahkan jarak vertikal antara TextFormField dan ElevatedButton.
              ElevatedButton(
                onPressed:
                    () {}, // Aksi yang akan dilakukan saat tombol "Simpan" ditekan.
                child: const Text(
                    "Simpan"), // Menampilkan teks "Simpan" pada tombol.
              ),
            ],
          ),
        ),
      ),
    );
  }
}
