/**
 * * Flutter Tutorials: UI challenges
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
      // ? SafeArea() hanya mencakup bagian badannya tanpa status bar.
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
