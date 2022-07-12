// ignore_for_file: slash_for_doc_comments
// ignore_for_file: file_names

/**
 * * Flutter Tutorials: Stateful Widget
 *
 * ! @author Verdi Pratama <hello@verside.com>
 * ! @link https://github.com/verdipratama/flutter_idcamp/
 * ! @licence MIT
 *
 * ? importM: import material design
 * ? StatefulW: StatefulWidget
 * ? Stateful Widget: Widget yang dinamis atau dapat berubah.
 */

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  double _numbers = 0;

  void _increments() {
    if (_numbers >= 10) _numbers = 0;
    setState(() {
      _numbers++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('IDCamp: Stateful Widget'),
        ),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              '$_numbers',
              style: TextStyle(
                fontSize: 50.0 + _numbers.toDouble(),
                fontWeight: FontWeight.bold,
                color: Colors.red,
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            ElevatedButton(
              onPressed: _increments,
              style: ElevatedButton.styleFrom(
                primary: Colors.blueAccent,
                fixedSize: const Size(200, 40),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40),
                ),
              ),
              child: const Text('PUSHED'),
            ),
          ],
        ),
      ),
    );
  }
}
