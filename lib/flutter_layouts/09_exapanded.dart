/**
 * * Flutter Tutorials: Expanded Widgets
 *
 * ! @author Verdi Pratama <hello@verside.com>
 * ! @link https://github.com/verdipratama/flutter_idcamp/
 * ! @licence MIT
 */
import 'package:flutter/material.dart';

// ? Expanded Widgets
// ? dapat mengembangkan child dari Row atau Column sesuai dengan ruang yang tersedia.
// ? Jika menjalankan di ukuran layar yang berbeda, maka ukuran container juga akan menyesuaikan.
// ? Expanded memiliki parameter flex yang memiliki nilai default 1.

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Expanded(
              child: Container(
                color: Colors.red,
              ),
            ),
            Expanded(
              flex: 2, // ! <- lebih besar !
              child: Container(
                color: Colors.amberAccent,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const <Widget>[
                    Text(
                      'BIG',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 50.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Expanded memiliki parameter flex yang memiliki nilai default 1',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        color: Colors.white,
                        fontSize: 20.0,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.blueAccent,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
