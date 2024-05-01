import 'package:flutter/material.dart';
import '../model/pasien.dart';
import 'pasien_detail.dart';

class PasienItem extends StatelessWidget {
  final Pasien pasien;
  const PasienItem({super.key, required this.pasien});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Card(
        child: ListTile(
          title: Text(
              "${pasien.nama}"), // Menampilkan teks nama pasien pada ListTile
        ),
      ),
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => PasienDetail(
                    pasien:
                        pasien))); // Menggunakan Navigator untuk berpindah ke halaman PasienDetail saat ListTile di-tap, dengan mengirimkan data pasien
      },
    );
  }
}
