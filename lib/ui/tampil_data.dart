import 'package:flutter/material.dart';

class TampilData extends StatelessWidget {
  final String nama;
  final String nim;
  final String tahunLahir;

  const TampilData({
    Key? key,
    required this.nama,
    required this.nim,
    required this.tahunLahir,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int umur = 0;
    if (tahunLahir.isNotEmpty) {
      int tahun = int.tryParse(tahunLahir) ?? DateTime.now().year;
      umur = DateTime.now().year - tahun;
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Perkenalan'), 
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Nama saya $nama,',
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              Text('NIM $nim,', style: const TextStyle(fontSize: 18)),
              const SizedBox(height: 8),
              Text(
                'dan umur saya adalah $umur tahun.',
                style: const TextStyle(fontSize: 18),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
