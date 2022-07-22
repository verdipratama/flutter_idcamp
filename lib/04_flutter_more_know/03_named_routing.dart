/**
 * * Flutter Tutorials: Flutter Navigation v2
 *
 * ! @author Verdi Pratama <hello@verside.com>
 * ! @link https://github.com/verdipratama/flutter_idcamp/
 * ! @licence MIT
 *
 * ? Ada dua method yang dapat digunakan pada Navigator widget yaitu:
 * ? Navigator.push (): Metode push digunakan untuk menambahkan rute lain ke atas tumpukan screen (stack).
 * ? Navigator.pop (): Metode pop menghapus rute paling atas dari tumpukan.
 */

import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('IDCamp: Named Routing'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, '/about');
          },
          child: const Text('MOVE'),
        ),
      ),
    );
  }
}

class About extends StatelessWidget {
  const About({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('IDCamp: Tentang Aplikasi'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('KEMBALI'),
        ),
      ),
    );
  }
}
