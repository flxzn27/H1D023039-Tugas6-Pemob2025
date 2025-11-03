import 'package:flutter/material.dart';
import 'package:h1d023039tugas6/ui/tampil_data.dart';

class FormData extends StatefulWidget {
  const FormData({Key? key}) : super(key: key);

  @override
  _FormDataState createState() => _FormDataState();
}

class _FormDataState extends State<FormData> {
  final _namaController = TextEditingController();
  final _nimController = TextEditingController();
  final _tahunLahirController = TextEditingController();

  @override
  void dispose() {
    _namaController.dispose();
    _nimController.dispose();
    _tahunLahirController.dispose();
    super.dispose();
  }

  void _kirimData() {
    String nama = _namaController.text;
    String nim = _nimController.text;
    String tahun = _tahunLahirController.text;

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) =>
            TampilData(nama: nama, nim: nim, tahunLahir: tahun),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Form Input Data'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: _namaController,
              decoration: const InputDecoration(
                labelText: 'Nama',
              ),
            ),
            const SizedBox(height: 16.0),

            TextField(
              controller: _nimController,
              decoration: const InputDecoration(labelText: 'NIM'),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 16.0),

            TextField(
              controller: _tahunLahirController,
              decoration: const InputDecoration(labelText: 'Tahun Lahir'),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 32.0),

            ElevatedButton(
              onPressed: _kirimData, // [cite: 834]
              child: const Text('Simpan'), // [cite: 850]
            ),
          ],
        ),
      ),
    );
  }
}
