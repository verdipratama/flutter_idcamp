/**
 * * Flutter Tutorials: Stack challenges
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
  final List alphabet = [
    "A",
    "B",
    "C",
    "D",
    "E",
    "F",
    "G",
    "H",
    "I",
    "J",
    "K",
    "L",
    "M",
    "N",
    "O",
    "P",
    "Q",
    "R",
    "S",
    "T",
    "U",
    "V",
    "W",
    "X",
    "Y",
    "Z"
  ];

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    /*24 is for notification bar on Android*/
    final double itemHeight = (size.height - kToolbarHeight - 24) / 2;
    final double itemWidth = size.width / 2;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.amber,
        elevation: 5.0,
        title: const Text('IDCamp: Grid Widgets'),
      ),
      body: SafeArea(
        child: GridView(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 1,
          ),
          children: <Widget>[
            GridView.count(
              crossAxisCount: 2,
              scrollDirection: Axis.horizontal,
              childAspectRatio: (itemWidth / itemHeight),
              children: List.generate(alphabet.length, (index) {
                return Container(
                  padding: const EdgeInsets.only(top: 20.0),
                  color: Colors.white,
                  child: Card(
                    semanticContainer: true,
                    elevation: 4.0,
                    margin: const EdgeInsets.all(10.0),
                    color: Colors.amber,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    child: Center(
                        child: Text(
                      alphabet[index],
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 50.0,
                      ),
                    )),
                  ),
                );
              }),
            ),
            const FlutterLogo(),
            const FlutterLogo(),
            const FlutterLogo(),
          ],
        ),
      ),
    );
  }
}
