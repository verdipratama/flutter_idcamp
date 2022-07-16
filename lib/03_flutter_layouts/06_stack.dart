/**
 * * Flutter Tutorials: Stack Widgets
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
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Container(color: const Color.fromARGB(255, 53, 52, 52)),
            Container(color: Colors.black, height: 300.0, width: 300.0),
            // ? Menggunakan Positioned
            // ? jika ingin lebih leluasa dalam memposisikan widget.
            Positioned(
              right: 40.0,
              bottom: 200.0,
              child: Container(
                color: Colors.amberAccent,
                height: 200.0,
                width: 200.0,
              ),
            ),
            // ? IndexStack
            // ? IndexedStack hanya menampilkan SATU elemen saja berdasarkan indeksnya.
            // ? Jadi kita harus menentukan elemen widget mana yang akan tampil dari stack tersebut berdasarkan nilai index.
            // ? Nilai index sendiri mulai dari 0 nol
            IndexedStack(),
          ],
        ),
      ),
    );
  }
}
