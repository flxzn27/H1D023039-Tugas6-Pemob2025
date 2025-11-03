import 'package:flutter/material.dart';
import 'package:h1d023039tugas6/ui/form_data.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tugas Pertemuan 6',
      // Mengatur tema warna hijau kalem
      theme: ThemeData(
        primarySwatch: Colors.green,
        scaffoldBackgroundColor:
            Colors.green[50], // Latar belakang hijau sangat muda
        appBarTheme: const AppBarTheme(
          color: Colors.green, // AppBar warna hijau
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.green[700], // Tombol warna hijau tua
          ),
        ),
        inputDecorationTheme: const InputDecorationTheme(
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.green),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey),
          ),
          labelStyle: TextStyle(color: Colors.green),
        ),
      ),
      home: const FormData(),
    );
  }
}
