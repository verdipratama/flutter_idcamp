// ignore_for_file: slash_for_doc_comments
// ignore_for_file: file_names

/**
 * * Flutter Tutorials: Stateless Widget
 *
 * ! @author Verdi Pratama <hello@verside.com>
 * ! @link https://github.com/verdipratama/flutter_idcamp/
 * ! @licence MIT
 *
 * ? importM: import material design
 * ? StatelessW: StatelessWidget
 * ? Stateless Widget: Widget yang tidak dapat dirubah atau tidak akan pernah berubah.
 */

import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Center(
          child: Text('IDcamp: Stateless Widget'),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              'HELLO WORLD',
              style: TextStyle(
                fontSize: 40.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            CustomTexts(
              txt: 'Welcome To The World!',
            ),
          ],
        ),
      ),
    );
  }
}

class CustomTexts extends StatelessWidget {
  final String txt;

  const CustomTexts({Key? key, required this.txt}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      txt.toLowerCase(),
      style: const TextStyle(
        fontSize: 20.0,
        color: Colors.red,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
