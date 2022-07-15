/**
 * * Flutter Tutorials: Flexible Widgets
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
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Flexible(
              flex: 2, // ! <- tambah panjang
              child: Row(
                children: <Widget>[
                  Flexible(flex: 1, child: Container(color: Colors.red)),
                  Flexible(flex: 1, child: Container(color: Colors.green)),
                  Flexible(flex: 1, child: Container(color: Colors.yellow)),
                ],
              ),
            ),
            // ? Tambah margin
            // ? margin: EdgeInsets.all(2)
            Flexible(
              flex: 1,
              child: Container(color: Colors.pink),
            ),
            Flexible(
              flex: 1,
              child: Container(color: Colors.cyan),
            ),
          ],
        ),
      ),
    );
  }
}
