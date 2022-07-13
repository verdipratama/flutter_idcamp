// ignore_for_file: slash_for_doc_comments
// ignore_for_file: file_names

/**
 * * Flutter Tutorials: Scaffold Widget
 *
 * ! @author Verdi Pratama <hello@verside.com>
 * ! @link https://github.com/verdipratama/flutter_idcamp/
 * ! @licence MIT
 *
 */

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // ? Beberapa bagian dari scaffold!
      // ? 1. Appbar
      // ? 2. Body
      // ? 3. Bottom Navigation Bar
      // ? 4. FLoating action button
      // !! Appbar
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Center(
          child: Text('IDCamp: Scaffold Widget'),
        ),
      ),
      // !! Body
      body: Center(
        child: FlutterLogo(
          size: MediaQuery.of(context).size.height,
        ),
      ),
      // !! Bottom Navigation Bar
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          // bottomItem(Icons.home, 'HOME'),
          // bottomItem(Icons.assessment, 'ORDER'),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'HOME',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.assignment),
            label: 'ORDER',
          ),
        ],
        backgroundColor: const Color.fromARGB(255, 20, 20, 20),
        unselectedItemColor: Colors.white,
      ),
      // !! Floating Action Button
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(
          Icons.plus_one,
        ),
      ),
    );
  }

  // ? Extract Widget Method
  BottomNavigationBarItem bottomItem(IconData icon, String text) {
    return BottomNavigationBarItem(
      icon: Icon(icon),
      label: text,
    );
  }
}
