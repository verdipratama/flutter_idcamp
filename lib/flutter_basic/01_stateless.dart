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
          child: Text('Flutter IDcamp'),
        ),
      ),
      body: const Center(
        child: Text(
          'Hello World',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 40.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
