import 'package:flutter/material.dart';
import 'package:classroom_bookstore/models/book_entry.dart';
import 'package:classroom_bookstore/widgets/left_drawer.dart';
import 'package:pbp_django_auth/pbp_django_auth.dart';
import 'package:provider/provider.dart';

class BookEntriesPage extends StatefulWidget {
  const BookEntriesPage({super.key});

  @override
  State<BookEntriesPage> createState() => _BookEntriesPageState();
}

class _BookEntriesPageState extends State<BookEntriesPage> {
  Future<List<BookEntry>> fetchBookEntries(CookieRequest request) async {
    final response = await request.get(
        // 'http://rafansya-daryltama-classroombookstore.pbp.cs.ui.ac.id/json/');
        // 'http://127.0.0.1/json/');
        'http://localhost:8000/json/');

    var data = response;

    List<BookEntry> bookEntries = [];
    for (var d in data) {
      if (d != null) {
        bookEntries.add(BookEntry.fromJson(d));
      }
    }
    return bookEntries;
  }

  @override
  Widget build(BuildContext context) {
    final request = context.watch<CookieRequest>();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Book Entry List'),
      ),
      drawer: const LeftDrawer(),
      body: FutureBuilder(
        future: fetchBookEntries(request),
        builder: (context, AsyncSnapshot snapshot) {
          if (snapshot.data == null) {
            return const Center(child: CircularProgressIndicator());
          } else {
            if (!snapshot.hasData) {
              return const Column(
                children: [
                  Text(
                    'Belum ada data Book pada Classroom Bookstore.',
                    style: TextStyle(fontSize: 20, color: Color(0xff59A5D8)),
                  ),
                  SizedBox(height: 8),
                ],
              );
            } else {
              return ListView.builder(
                itemCount: snapshot.data!.length,
                itemBuilder: (_, index) => Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "${snapshot.data![index].fields.name}",
                        style: const TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text("${snapshot.data![index].fields.price}"),
                      const SizedBox(height: 10),
                      Text("${snapshot.data![index].fields.description}"),
                      const SizedBox(height: 10),
                      Text("${snapshot.data![index].fields.publishedDate}")
                    ],
                  ),
                ),
              );
            }
          }
        },
      ),
    );
  }
}
