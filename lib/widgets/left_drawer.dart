import 'package:flutter/material.dart';
import 'package:classroom_bookstore/screens/menu.dart';
import 'package:classroom_bookstore/screens/bookentry_form.dart';
import 'package:classroom_bookstore/screens/bookentries.dart';

class LeftDrawer extends StatelessWidget {
  const LeftDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary,
            ),
            child: const Column(
              children: [
                Text(
                  'Classroom Bookstore',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Padding(padding: EdgeInsets.all(8)),
                Text(
                  "Mari ubah dunia dengan buku!",
                  style: TextStyle(
                    fontSize: 15, // Set the font size to 15
                    color: Colors.white, // Set the text color to white
                    fontWeight: FontWeight.normal, // Set the font weight to normal
                  ),
                  textAlign: TextAlign.center, // Center align the text
                ),
              ],
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home_outlined),
            title: const Text('Halaman Utama'),
            // Bagian redirection ke MyHomePage
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => MyHomePage(),
                )
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.menu_book_rounded),
            title: const Text('Lihat daftar buku'),
            // Bagian redirection ke BookEntryPage
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const BookEntriesPage(),
                )
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.book_outlined),
            title: const Text('Masukkan entry buku baru'),
            // Bagian redirection ke BookEntryFormPage
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const BookEntryFormPage(),
                )
              );
            },
          ),
        ],
      ),
    );
  }
}