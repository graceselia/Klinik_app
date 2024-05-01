import 'package:flutter/material.dart';
import 'ui/beranda.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner:
          false, // Menyembunyikan banner debug di perangkat
      title: 'Klinik', // Menetapkan judul aplikasi menjadi "Klinik"
      home: Beranda(), // Menetapkan Beranda sebagai halaman utama
    );
  }
}
