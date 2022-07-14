// ignore_for_file: slash_for_doc_comments
// ignore_for_file: file_names

/**
 * * Flutter Tutorials: Stateful Builder
 *
 * ! @author Verdi Pratama <hello@verside.com>
 * ! @link https://github.com/verdipratama/flutter_idcamp/
 * ! @licence MIT
 */

import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Center(child: Text('IDCamp: Wisata')),
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Container(),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 16.0),
              child: Row(
                children: <Widget>[
                  Column(),
                  Column(),
                  Column(),
                ],
              ),
            ),
            Container(),
          ],
        ),
      ),
    );
  }
}
