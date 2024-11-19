import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:classroom_bookstore/screens/menu.dart';
import 'package:classroom_bookstore/widgets/left_drawer.dart';
import 'package:pbp_django_auth/pbp_django_auth.dart';
import 'package:provider/provider.dart';

class BookEntryFormPage extends StatefulWidget {
  const BookEntryFormPage({super.key});

  @override
  State<BookEntryFormPage> createState() => _BookEntryFormPageState();
}

class _BookEntryFormPageState extends State<BookEntryFormPage> {
  final _formKey = GlobalKey<FormState>();
  String _bookTitle = "";
  int _bookPrice = 0;
  String _bookDescription = "";
  int _bookQuantity = 0;
  String _bookCategory = "";
  String _bookIsbn13 = "";
  String _bookIsbn10 = "";
  DateTime _bookPublishedDate = DateTime.now();
  int _bookPages = 0;
  String _bookLanguage = "";
  double _bookWeight = 0.0;
  String _bookAuthor = "";
  String _bookPublisher = "";
  // TODO (not mandatory): Add image (as in URL or file)

  @override
  Widget build(BuildContext context) {
    final request = context.watch<CookieRequest>();
    return Scaffold(
      // AppBar adalah bagian atas halaman yang menampilkan judul.
      appBar: AppBar(
        // Judul aplikasi "Classroom Bookstore" dengan teks putih dan tebal.
        title: const Text(
          'Form entry buku Classroom Bookstore',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        // Warna latar belakang AppBar diambil dari skema warna tema aplikasi.
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      drawer: const LeftDrawer(),
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Widget for Book Title
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "Book Title",
                    labelText: "Book Title",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                  onChanged: (String? value) {
                    setState(() {
                      _bookTitle = value!;
                    });
                  },
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return "Book title must be filled!";
                    }
                    return null;
                  },
                ),
              ),

              // Widget for Book Price
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "Book Price",
                    labelText: "Book Price",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                  onChanged: (String? value) {
                    setState(() {
                      _bookPrice = int.tryParse(value!) ?? 0;
                    });
                  },
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return "Book price must be filled";
                    }
                    if (int.tryParse(value) == null) {
                      return "Book price must be entered as an int number!";
                    }
                    return null;
                  },
                ),
              ),

              // Widget for Book Description
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "Book Description",
                    labelText: "Book Description",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                  onChanged: (String? value) {
                    setState(() {
                      _bookDescription = value!;
                    });
                  },
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return "Book description must be filled!";
                    }
                    return null;
                  },
                ),
              ),

              // Widget for Book Quantity
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "Book Quantity",
                    labelText: "Book Quantity",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                  onChanged: (String? value) {
                    setState(() {
                      _bookQuantity = int.tryParse(value!) ?? 0;
                    });
                  },
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return "Book quantity must be filled!";
                    }
                    if (int.tryParse(value) == null) {
                      return "Book quantity must be entered as an int number!";
                    }
                    return null;
                  },
                ),
              ),

              // Widget for Book Category
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "Book Category",
                    labelText: "Book Category",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                  onChanged: (String? value) {
                    setState(() {
                      _bookCategory = value!;
                    });
                  },
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return "Book category must be filled!";
                    }
                    return null;
                  },
                ),
              ),

              // Widget for Book ISBN13
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "Book ISBN-13",
                    labelText: "Book ISBN-13",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                  onChanged: (String? value) {
                    setState(() {
                      _bookIsbn13 = value!;
                    });
                  },
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return "Book ISBN13 must be filled!";
                    } else if (value.length != 13) {
                      return "Book ISBN13 must be 13 characters long!";
                    } else if (int.tryParse(value) == null) {
                      return "Book ISBN13 must be registered in all-numbers string";
                    }
                    return null;
                  },
                ),
              ),

              // Widget for Book ISBN10
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "Book ISBN-10",
                    labelText: "Book ISBN-10",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                  onChanged: (String? value) {
                    setState(() {
                      _bookIsbn10 = value!;
                    });
                  },
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return "Book ISBN10 must be filled!";
                    } else if (value.length != 10) {
                      return "Book ISBN10 must be 10 characters long!";
                    } else if (int.tryParse(value) == null) {
                      return "Book ISBN10 must be registered in all-numbers string";
                    }
                    return null;
                  },
                ),
              ),

              // Widget for Book Published Date
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "Book Published Date",
                    labelText: "Book Published Date",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                  readOnly: true,
                  onTap: () async {
                    DateTime? pickedDate = await showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(1900),
                      lastDate: DateTime.now(),
                    );
                    if (pickedDate != null) {
                      setState(() {
                        _bookPublishedDate = pickedDate;
                      });
                    }
                  },
                  controller: TextEditingController(
                    // ignore: unnecessary_null_comparison
                    text: _bookPublishedDate == null
                        ? ''
                        : "${_bookPublishedDate.toIso8601String().split('T')[0]}",
                  ),
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return "Book published date must be filled!";
                    }
                    return null;
                  },
                ),
              ),

              // Widget for Book Pages
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "Book Pages",
                    labelText: "Book Pages",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                  onChanged: (String? value) {
                    setState(() {
                      _bookPages = int.tryParse(value!) ?? 0;
                    });
                  },
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return "Book pages must be filled!";
                    }
                    if (int.tryParse(value) == null) {
                      return "Book pages must be entered as an int number!";
                    }
                    return null;
                  },
                ),
              ),

              // Widget for Book Language
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "Book Language",
                    labelText: "Book Language",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                  onChanged: (String? value) {
                    setState(() {
                      _bookLanguage = value!;
                    });
                  },
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return "Book language must be filled!";
                    }
                    return null;
                  },
                ),
              ),

              // Widget for Book Weight
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "Book Weight",
                    labelText: "Book Weight",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                  onChanged: (String? value) {
                    setState(() {
                      _bookWeight = double.tryParse(value!) ?? 0.0;
                    });
                  },
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return "Book weight must be filled!";
                    }
                    if (double.tryParse(value) == null) {
                      return "Book weight must be entered as a double number!";
                    }
                    return null;
                  },
                ),
              ),

              // Widget for Book Author
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "Book Author",
                    labelText: "Book Author",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                  onChanged: (String? value) {
                    setState(() {
                      _bookAuthor = value!;
                    });
                  },
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return "Book author must be filled!";
                    }
                    return null;
                  },
                ),
              ),

              // Widget for Book Publisher
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "Book Publisher",
                    labelText: "Book Publisher",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                  onChanged: (String? value) {
                    setState(() {
                      _bookPublisher = value!;
                    });
                  },
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return "Book publisher must be filled!";
                    }
                    return null;
                  },
                ),
              ),

              // Widget for Save Button
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: WidgetStateProperty.all(
                          Theme.of(context).colorScheme.primary),
                    ),
                    onPressed: () async {
                      if (_formKey.currentState!.validate()) {
                        // Kirim ke Django dan tunggu respons
                        // TODO: Ganti URL dan jangan lupa tambahkan trailing slash (/) di akhir URL!
                        try {
                          final response = await request.postJson(
                            // "http://rafansya-daryltama-classroombookstore.pbp.cs.ui.ac.id/create-flutter/",
                            "http://localhost:8000/create-flutter/",
                            jsonEncode(<String, String>{
                              "user":
                                  request.cookies['user_id']?.toString() ?? '',
                              "name": _bookTitle,
                              "price": _bookPrice.toString(),
                              "description": _bookDescription,
                              "quantity": _bookQuantity.toString(),
                              "category": _bookCategory,
                              "isbn_13": _bookIsbn13,
                              "isbn_10": _bookIsbn10,
                              "published_date":
                                  _bookPublishedDate.toIso8601String(),
                              "pages": _bookPages.toString(),
                              "language": _bookLanguage,
                              "weight": _bookWeight.toString(),
                              "author": _bookAuthor,
                              "publisher": _bookPublisher,
                              "image":
                                  "", // Add image URL or file path if available
                            }),
                          );
                          if (context.mounted) {
                            if (response['status'] == 'success') {
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(const SnackBar(
                                content: Text("Mood baru berhasil disimpan!"),
                              ));
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => MyHomePage()),
                              );
                            } else {
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(const SnackBar(
                                content: Text(
                                    "Terdapat kesalahan, silakan coba lagi."),
                              ));
                            }
                          }
                        } catch (e) {
                          print('Error: $e');
                          ScaffoldMessenger.of(context)
                              .showSnackBar(const SnackBar(
                            content:
                                Text("Terjadi kesalahan, silakan coba lagi."),
                          ));
                        }
                      }
                    },
                    child: const Text(
                      "Save",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
