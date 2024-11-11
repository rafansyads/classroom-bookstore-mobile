import 'package:classroom_bookstore/widgets/left_drawer.dart';
import 'package:flutter/material.dart';

class BookEntriesPage extends StatelessWidget {
  const BookEntriesPage({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // AppBar adalah bagian atas halaman yang menampilkan judul.
      appBar: AppBar(
        // Judul aplikasi "Classroom Bookstore" dengan teks putih dan tebal.
        title: const Text(
          'Daftar buku di Classroom Bookstore',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        // Warna latar belakang AppBar diambil dari skema warna tema aplikasi.
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      drawer: const LeftDrawer(),
      body: Container(
        color: Colors.lightBlue[50],
        child: const Center(
          child: Text(
            'Your Mood Entries will appear here',
            style: TextStyle(fontSize: 18, color: Colors.black54),
          ),
        ),
      ),
    );
  }
}
