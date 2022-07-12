// ignore_for_file: slash_for_doc_comments
// ignore_for_file: file_names

/**
 * * Flutter Tutorials: Text Widget
 *
 * ! @author Verdi Pratama <hello@verside.com>
 * ! @link https://github.com/verdipratama/flutter_idcamp/
 * ! @licence MIT
 *
 * ? importM: import material design
 * ? StatelessW: StatelessWidget
 * ? Text Widget: Teks adalah bagian yang sangat penting dari sebuah UI aplikasi mobile mana pun.
 * ? TextStyle() pada Text Widget berfungsi untuk memanipulasi jenis font, ukuran, warna, jenis font dan lainnya
 */

import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('IDCamp: Text Widgets'),
        ),
        backgroundColor: Colors.black,
      ),
      body: const Center(
        child: Text(
          'Welcome to my first App!',
          textAlign: TextAlign.center,
          // ? gunakan Container() agar kelihatan!
          // Max 2 line saja
          // maxLines: 2,
          // Overflow: Mengatur text jika terpotong!
          // ellipsis menunjukan titik-titik kalau textnya terpotong!
          // overflow: TextOverflow.ellipsis,
          // softWrap tidak akan wrap ke bawah
          // softWrap: true,
          // ? menggunakan TextStyle()
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 25.0,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.bold,
            color: Colors.red,
            decoration: TextDecoration.underline,
            decorationStyle: TextDecorationStyle.wavy,
            decorationThickness: 1.0,
          ),
        ),
      ),
    );
  }
}
