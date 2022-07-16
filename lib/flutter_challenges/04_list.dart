/**
 * * Flutter Tutorials: List challenges
 *
 * ! @author Verdi Pratama <hello@verside.com>
 * ! @link https://github.com/verdipratama/flutter_idcamp/
 * ! @licence MIT
 */

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<int> _numList = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black,
        title: const Text('IDCamp: ListView'),
      ),
      body: SafeArea(
        child: ListView(
          // ? Wajib Mengembalikan fungsi map menjadi objek List
          // ? dengan fungsi .toList()
          children: _numList.map((number) {
            return Container(
              height: 250.0,
              margin: const EdgeInsets.all(16.0),
              // width: MediaQuery.of(context).size.width,
              // margin: const EdgeInsets.only(top: 10),
              // color: Colors.black,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Center(
                child: Text(
                  number.toString(),
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 50.0,
                  ),
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
