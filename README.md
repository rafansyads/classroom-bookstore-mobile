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