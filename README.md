# classroom_bookstore

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

For Web version, please kindly visit:
- Repo: `https://github.com/rafansyads/classroom-bookstore/`
- Deployment: `http://rafansya-daryltama-classroombookstore.pbp.cs.ui.ac.id/`

## Questions (Indonesian)

### TM7 Questions

#### 1. Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget, dan jelaskan perbedaan dari keduanya.
> **Jawaban:**
>
> **Stateless Widget** adalah widget yang tidak memiliki state yang dapat berubah. Stateless widget hanya membutuhkan konfigurasi sekali dan tidak akan berubah selama siklus hidup widget tersebut. Contoh dari stateless widget adalah `Text`, `Icon`, dan `Container`.
>
> **Stateful Widget** adalah widget yang memiliki state yang dapat berubah selama siklus hidup widget tersebut. Stateful widget dapat merespon perubahan state dan merender ulang dirinya sendiri. Contoh dari stateful widget adalah `Checkbox`, `TextField`, dan `Slider`.
>
> **Perbedaan utama** antara keduanya adalah:
> - _Stateless widget_ **tidak dapat berubah** setelah diinisialisasi, sedangkan _stateful widget_ **dapat berubah dan merespon perubahan state**.
> - _Stateless widget_ **lebih ringan dan lebih efisien** dibandingkan _stateful widget_ karena **tidak perlu mengelola state**.

#### 2. Sebutkan widget apa saja yang kamu gunakan pada proyek ini dan jelaskan fungsinya.
> Jawaban:
> - `MaterialApp`: Widget utama untuk aplikasi berbasis Material Design.
> - `Scaffold`: Struktur dasar halaman dengan AppBar dan body.
> - `AppBar`: Bagian atas halaman yang menampilkan judul.
> - `Column`: Menyusun widget secara vertikal (bayangkan seperti sebuah kolom dalam matriks 2 dimensi).
> - `Row`: Menyusun widget secara horizontal (bayangkan seperti sebuah baris dalam matriks 2 dimensi).
> - `Padding`: Ruang / space kosong di sekitar widget.
> - `ElevatedButton`: Tombol dengan efek elevasi.
> - `GridView`: Penyusunan widget dalam bentuk grid (bayangkan seperti sebuah grid matriks 2 dimensi).
> - `Card`: Menampilkan konten dalam bentuk kartu.
> - `Icon`: Ikon gambar untuk memperjelas fungsi dari suatu widget, contoh: tombol (button).
> - `Text`: Teks sebagai sebuah deskripsi singkat.
> - `SnackBar`: Pesan sementara di bagian bawah layar sebagai umpan balik / respon dari suatu aksi, contoh: menekan button / tombol.

#### 3. Apa fungsi dari setState()? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut.
> Jawaban:
> `setState()` adalah fungsi yang digunakan dalam _stateful widget_ untuk memberitahu framework bahwa ada perubahan pada state yang perlu dirender ulang. Ketika `setState()` dipanggil, Flutter akan merender ulang widget yang terpengaruh oleh perubahan state tersebut.
>
> Variabel yang dapat terdampak oleh `setState()` adalah variabel yang didefinisikan dalam kelas state dan digunakan dalam metode `build()` untuk merender UI.

#### 4. Jelaskan perbedaan antara const dengan final.
> Jawaban:
> - `const`: Digunakan untuk mendeklarasikan nilai yang bersifat konstan dan tidak akan berubah selama runtime. Nilai `const` harus diketahui pada waktu kompilasi.
> - `final`: Digunakan untuk mendeklarasikan variabel yang nilainya hanya dapat diinisialisasi sekali dan tidak dapat diubah setelahnya. Nilai `final` dapat diinisialisasi pada waktu runtime.

#### 5. Jelaskan bagaimana cara kamu mengimplementasikan checklist-checklist di bawah ini:
> Jawaban:
> ```text
> Membuat sebuah program Flutter baru dengan tema E-Commerce yang sesuai dengan tugas-tugas sebelumnya.
> ```
> - Membuat proyek Flutter baru dengan perintah `flutter create classroom_bookstore`.
> - Mengatur tema aplikasi di `main.dart` dengan menggunakan `ThemeData`.
>
> ```text
> Membuat tiga tombol sederhana dengan ikon dan teks untuk:
> Melihat daftar produk (Lihat Daftar Produk)
> Menambah produk (Tambah Produk)
> Logout (Logout)
> ```
> - Menggunakan class `ItemHomepage` sebagai elemen dari `ItemCard` yang bertujuan untuk menampilkan `ElevatedButton` untuk membuat tiga tombol dengan ikon dan teks.
>
> ```text
> Mengimplementasikan warna-warna yang berbeda untuk setiap tombol (Lihat Daftar Produk, Tambah Produk, dan Logout).
> ```
> - Menentukan warna yang berbeda untuk setiap tombol dengan menggunakan properti color dari `ItemHomepage`.
>
> ```text
> Memunculkan Snackbar dengan tulisan:
> "Kamu telah menekan tombol Lihat Daftar Produk" ketika tombol Lihat Daftar Produk ditekan.
> "Kamu telah menekan tombol Tambah Produk" ketika tombol Tambah Produk ditekan.
> "Kamu telah menekan tombol Logout" ketika tombol Logout ditekan.
> ```
> - Menggunakan `ScaffoldMessenger` untuk menampilkan `SnackBar` dengan pesan yang sesuai ketika tombol ditekan.
>
> Contoh implementasi:
> ```dart
> ElevatedButton(
>   onPressed: () {
>     ScaffoldMessenger.of(context).showSnackBar(
>       SnackBar(content: Text("Kamu telah menekan tombol Lihat Daftar Produk")),
>     );
>   },
>   style: ElevatedButton.styleFrom(primary: Colors.blue),
>   child: Column(
>     children: [
>       Icon(Icons.book),
>       Text('Lihat Daftar Produk'),
>     ],
>   ),
> ),
> ```

### TM8 Questions

#### 1. Apa kegunaan const di Flutter? Jelaskan apa keuntungan ketika menggunakan const pada kode Flutter. Kapan sebaiknya kita menggunakan const, dan kapan sebaiknya tidak digunakan?
> Jawaban:
> `const` digunakan untuk mendeklarasikan nilai yang bersifat konstan dan tidak akan berubah selama runtime. Keuntungan menggunakan `const` adalah:
> - Meningkatkan performa aplikasi karena nilai konstan dapat dioptimalkan oleh compiler.
> - Membantu mencegah perubahan nilai yang tidak diinginkan.
>
> Sebaiknya menggunakan `const` ketika nilai sudah diketahui pada waktu kompilasi dan tidak akan berubah selama runtime. Sementara itu, `const` tidak sebaiknya digunakan ketika nilai akan diinisialisasi atau diubah selama runtime.

#### 2. Jelaskan dan bandingkan penggunaan Column dan Row pada Flutter. Berikan contoh implementasi dari masing-masing layout widget ini!
> Jawaban:
> `Column` dan `Row` adalah widget yang digunakan untuk menyusun widget lain secara vertikal dan horizontal.
> - `Column`: Menyusun widget secara vertikal.
> - `Row`: Menyusun widget secara horizontal.
>
> Contoh implementasi `Column`:
> ```dart
> // Kode ini menyusun text Item 1 -- Item 3 secara vertikal
> Column(
>   children: [
>     Text('Book Title: $_bookTitle'), // Memberikan pesan "String: book title"
>     Text('Book Price: $_bookPrice'), // Memberikan pesan "int: book price"
>     Text('Book Description: $_bookDescription'), // Memberikan pesan "String: book description"
>     ...
>     Text('Book Published Date: ${_bookPublishedDate.toLocal()}'), // Memberikan pesan "DateTime: book published date" (in Text string)
>     ...
>   ],
> )
> ```
>
> Contoh implementasi `Row`:
> ```dart
> // Kode ini menyusun text Item 1 -- Item 3 secara horizontal (implementasi sebenarnya tidak ada di dalam code)
> Row(
>   children: [
>     Text('Book Title: $_bookTitle'), // Memberikan pesan "String: book title"
>     Text('Book Price: $_bookPrice'), // Memberikan pesan "int: book price"
>     Text('Book Description: $_bookDescription'), // Memberikan pesan "String: book description"
>     ...
>     Text('Book Published Date: ${_bookPublishedDate.toLocal()}'), // Memberikan pesan "DateTime: book published date" (in Text string)
>     ...
>   ],
> )
> ```

#### 3. Sebutkan apa saja elemen input yang kamu gunakan pada halaman form yang kamu buat pada tugas kali ini. Apakah terdapat elemen input Flutter lain yang tidak kamu gunakan pada tugas ini? Jelaskan!
> Jawaban:
> Elemen input yang digunakan:
> - `TextField`: input teks.
> - `DateTime` (dalam bentuk `TextFormField`): memilih tanggal yang diinginkan dalam suatu rentang waktu yyyy-MM-dd
>
> Elemen input lain yang tidak digunakan:
> - `DropdownButton`:  memilih opsi dari daftar.
> - `Checkbox`:  memilih opsi biner.
> - `Radio`:  memilih satu opsi dari beberapa opsi.
> - `Slider`:  memilih nilai dari rentang nilai.
> - `Switch`:  memilih opsi biner dengan gaya saklar.
> 
> **Selanjutnya akan dicoba untuk dipakai (peace out:D)**

#### 4. Bagaimana cara kamu mengatur tema (theme) dalam aplikasi Flutter agar aplikasi yang dibuat konsisten? Apakah kamu mengimplementasikan tema pada aplikasi yang kamu buat?
> Jawaban:
> Tema dapat diatur dengan menggunakan `ThemeData` pada `MaterialApp`. Tema dapat mencakup warna, font, dan gaya widget lainnya. Selain itu, untuk mempertahankan color pallete, kita juga bisa memanfaatkan `ColorScheme` yang sudah di-define dari `main.dart` (jika sudah diinstansiasi).
> 
> **Contoh implementasi:** (`bookentry_form.dart`, `menu.dart`, dll)
> ```dart
> return Scaffold(
>          appbar: AppBar( // AppBar di menu utama (menu.dart)
>            ...
>            backgroundColor: Theme.of(context).colorScheme.primary, // Uses primary color from main.dart: deepPurple
>          ), // AppBar
>          ... // More of the applied ColorScheme: deepPurple from main.dart here
> )
> ```
> **Setting di `main.dart`:**
> ```dart
> colorScheme: ColorScheme.fromSwatch(
>           primarySwatch: Colors.deepPurple,
>           ).copyWith(secondary: Colors.deepPurple[400]),
> ```
> Ya, saya mengimplementasikan tema pada aplikasi yang saya buat untuk menjaga konsistensi tampilan.

#### 5. Bagaimana cara kamu menangani navigasi dalam aplikasi dengan banyak halaman pada Flutter?
> Jawaban:
> Navigasi dalam aplikasi Flutter dapat ditangani dengan menggunakan `Navigator` dan `Route`. `Navigator` digunakan untuk mendorong (push) dan menghapus (pop) halaman dari tumpukan navigasi.
> 
> **Contoh implementasi:** (`left_drawer.dart` dan `menu.dart`)
> ```dart
> Navigator.push(
>   context,
>   MaterialPageRoute(builder: (context) => const BookEntryFormPage()),
> );
> ```
> Pada aplikasi yang saya buat, saya menggunakan `Navigator` untuk berpindah antara halaman-halaman yang berbeda.

### TM9 Questions

#### 1. Jelaskan mengapa kita perlu membuat model untuk melakukan pengambilan ataupun pengiriman data JSON? Apakah akan terjadi error jika kita tidak membuat model terlebih dahulu? (model ada di book_entry.dart)
> Model diperlukan untuk mempermudah proses pengambilan dan pengiriman data JSON karena model menyediakan struktur yang jelas dan konsisten untuk data yang diterima atau dikirim. Dengan model, kita dapat dengan mudah mengonversi data JSON menjadi objek Dart dan sebaliknya. Jika kita tidak membuat model terlebih dahulu, kita mungkin akan mengalami kesulitan dalam mengelola data yang kompleks dan berisiko terjadi kesalahan dalam parsing atau serialisasi data.

#### 2. Jelaskan fungsi dari library http yang sudah kamu implementasikan pada tugas ini (http library (flutter pub) in dart)
> Library http digunakan untuk melakukan permintaan HTTP seperti GET, POST, PUT, dan DELETE. Dalam tugas ini, library http digunakan untuk berkomunikasi dengan server Django, mengirimkan data, dan menerima respons dalam format JSON. Library ini mempermudah proses pengiriman dan penerimaan data melalui protokol HTTP.

#### 3. Jelaskan fungsi dari CookieRequest dan jelaskan mengapa instance CookieRequest perlu untuk dibagikan ke semua komponen di aplikasi Flutter.
> CookieRequest adalah kelas yang digunakan untuk mengelola permintaan HTTP yang memerlukan autentikasi berbasis cookie. Instance CookieRequest perlu dibagikan ke semua komponen di aplikasi Flutter agar setiap komponen dapat mengakses dan mengelola cookie yang sama, memastikan bahwa status autentikasi dan sesi pengguna tetap konsisten di seluruh aplikasi.

#### 4. Jelaskan mekanisme pengiriman data mulai dari input hingga dapat ditampilkan pada Flutter.
> Mekanisme pengiriman data dimulai dari input pengguna di aplikasi Flutter. Data ini kemudian dikirim ke server Django melalui permintaan HTTP (misalnya POST). Server Django memproses data tersebut dan mengembalikan respons dalam format JSON. Aplikasi Flutter menerima respons JSON ini, mengonversinya menjadi objek Dart menggunakan model yang telah dibuat, dan menampilkan data tersebut di antarmuka pengguna.

#### 5. Jelaskan mekanisme autentikasi dari login, register, hingga logout. Mulai dari input data akun pada Flutter ke Django hingga selesainya proses autentikasi oleh Django dan tampilnya menu pada Flutter.
> Mekanisme autentikasi dimulai dari input data akun oleh pengguna di aplikasi Flutter. Data ini dikirim ke server Django melalui permintaan HTTP (misalnya POST untuk login atau register). Server Django memverifikasi data tersebut dan, jika valid, mengembalikan respons yang berisi informasi autentikasi (misalnya token atau cookie). Aplikasi Flutter menyimpan informasi autentikasi ini dan menggunakannya untuk mengakses endpoint yang memerlukan autentikasi. Saat logout, aplikasi Flutter mengirim permintaan ke server Django untuk menghapus sesi atau token autentikasi, dan kemudian menghapus informasi autentikasi dari aplikasi.

#### 6. Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step! (bukan hanya sekadar mengikuti tutorial).
> - **Membuat Model**: Saya membuat model BookEntry dan Fields di `book_entry.dart` untuk mempermudah pengelolaan data JSON.
> - **Menggunakan Library http**: Saya mengimpor library http dan menggunakannya untuk melakukan permintaan HTTP ke server Django.
> - **Mengimplementasikan CookieRequest**: Saya membuat instance CookieRequest dan membagikannya ke seluruh komponen aplikasi menggunakan Provider.
> - **Mengirim dan Menerima Data**: Saya mengimplementasikan fungsi untuk mengirim data input pengguna ke server Django dan menerima respons JSON, kemudian menampilkan data tersebut di aplikasi Flutter.
> - **Autentikasi**: Saya mengimplementasikan mekanisme login, register, dan logout dengan mengirim permintaan HTTP ke server Django dan mengelola informasi autentikasi di aplikasi Flutter.
> - **Pengujian dan Debugging**: Saya melakukan pengujian dan debugging untuk memastikan semua fungsi berjalan dengan baik dan memperbaiki kesalahan yang ditemukan.
