import 'package:flutter/material.dart';
import '../widget/sidebar.dart';

class Beranda extends StatelessWidget {
  const Beranda({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Sidebar(), // Menambahkan Sidebar sebagai drawer pada Scaffold
      appBar: AppBar(
          title: Text("Beranda")), // Menampilkan judul "Beranda" pada AppBar
      body: Center(
        child: Text(
            "Selamat Datang"), // Menampilkan teks "Selamat Datang" di tengah layar
      ),
    );
  }
}
