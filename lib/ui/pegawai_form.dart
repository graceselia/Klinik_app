import 'package:flutter/material.dart';

class PegawaiForm extends StatefulWidget {
  const PegawaiForm({Key? key}) : super(key: key);
  _PegawaiFormState createState() => _PegawaiFormState();
}

class _PegawaiFormState extends State<PegawaiForm> {
  final _formKey =
      GlobalKey<FormState>(); // Membuat GlobalKey untuk mengakses FormState
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
              "Tambah Pegawai")), // Menampilkan judul "Tambah Pegawai" pada AppBar
      body: SingleChildScrollView(
        child: Form(
          key: _formKey, // Menggunakan GlobalKey pada Form
          child: Column(
            children: [
              TextField(
                  decoration: const InputDecoration(
                      labelText:
                          "Nama Pegawai")), // Menampilkan TextField dengan label "Nama Pegawai"
              TextField(
                  decoration: const InputDecoration(
                      labelText:
                          "NIP")), // Menampilkan TextField dengan label "NIP"
              TextField(
                  decoration: const InputDecoration(
                      labelText:
                          "Tanggal Lahir")), // Menampilkan TextField dengan label "Tanggal Lahir"
              TextField(
                  decoration: const InputDecoration(
                      labelText:
                          "Nomor Telepon")), // Menampilkan TextField dengan label "Nomor Telepon"
              TextField(
                  decoration: const InputDecoration(
                      labelText:
                          "Email")), // Menampilkan TextField dengan label "Email"
              TextField(
                  decoration: const InputDecoration(
                      labelText:
                          "Password")), // Menampilkan TextField dengan label "Password"
              SizedBox(
                  height: 20), // Memberikan jarak vertikal sebesar 20 piksel
              ElevatedButton(
                  onPressed: () {},
                  child: const Text(
                      "Simpan")) // Menampilkan tombol "Simpan" yang belum memiliki fungsi onPressed
            ],
          ),
        ),
      ),
    );
  }
}
