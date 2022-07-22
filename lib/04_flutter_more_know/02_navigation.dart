/**
 * * Flutter Tutorials: Flutter Navigation
 *
 * ! @author Verdi Pratama <hello@verside.com>
 * ! @link https://github.com/verdipratama/flutter_idcamp/
 * ! @licence MIT
 *
 * ? Ada dua method yang dapat digunakan pada Navigator widget yaitu:
 * ? Navigator.push (): Metode push digunakan untuk menambahkan rute lain ke atas tumpukan screen (stack).
 * ? Navigator.pop (): Metode pop menghapus rute paling atas dari tumpukan.
 */

import 'dart:async';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('IDCamp: Navigation'),
      ),
      body: Container(
        padding: const EdgeInsets.all(20.0),
        color: Colors.amberAccent[200],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'Home',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10.0),
            ElevatedButton(
              onPressed: () {
                // ? Inisialisasi route
                // ? Cara I Menggunakan MaterialPageRoute() ada Animationnya
                // Route route = MaterialPageRoute(
                //   builder: ((context) => const HomeTwo()),
                // );

                // ? Cara II menggunakan PageRouteBuilder()
                Route route = PageRouteBuilder(
                  pageBuilder: ((_, __, ___) => const HomeTwo()),
                );

                // ? Arahkan ke screen berikutnya
                Navigator.push(context, route);
              },
              child: const Text('MOVE'),
            ),
          ],
        ),
      ),
    );
  }
}

// ? Splash Screen
class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 1),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          // ? Arahkan ke Home
          builder: ((context) => const Home()),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: FlutterLogo(
        size: MediaQuery.of(context).size.height,
      ),
    );
  }
}

// ? Screen Two Navigator.pop()
class HomeTwo extends StatelessWidget {
  const HomeTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('IDCamp: About'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Kembali'),
        ),
      ),
    );
  }
}
