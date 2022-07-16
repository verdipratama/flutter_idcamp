/**
 * * Flutter Tutorials: Stack challenges
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
      body: Stack(
        children: <Widget>[
          // ignore: todo
          // TODO: The challenges
          // ? 1. Add Backgrouds
          // ? 2. Add Datetime
          // ? 3. Add Qoutes
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                  'https://cdn.pixabay.com/photo/2020/10/04/18/13/mountains-5627143_1280.jpg',
                ),
                fit: BoxFit.fitHeight,
              ),
            ),
          ),
          Container(
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  '${DateTime.now().hour}:${DateTime.now().minute}',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 60.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text(
                  'Kamis, 15 Juni 2022',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25.0,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 48.0,
            left: 10.0,
            right: 10.0,
            child: Card(
              color: Colors.white,
              elevation: 5.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16.0),
              ),
              child: Column(
                children: const <Widget>[
                  Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Text(
                      "Kata Mutiara",
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 0,
                      left: 16.0,
                      right: 16.0,
                      bottom: 8.0,
                    ),
                    child: Text(
                      "Pendidikan adalah senjata paling ampuh yang bisa kamu gunakan untuk mengubah dunia.",
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 8.0,
                      left: 16.0,
                      right: 16.0,
                      bottom: 32.0,
                    ),
                    child: Text("Nelson Mandela"),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
