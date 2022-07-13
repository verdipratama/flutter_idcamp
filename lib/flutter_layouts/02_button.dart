// ignore_for_file: slash_for_doc_comments
// ignore_for_file: file_names

/**
 * * Flutter Tutorials: Button Widget
 *
 * ! @author Verdi Pratama <hello@verside.com>
 * ! @link https://github.com/verdipratama/flutter_idcamp/
 * ! @licence MIT
 *
 */
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // ? 1. MENGGUNAKAN TextButton()
            // ? Primary Button
            TextButton(
              onPressed: () {},
              child: const Text('Primary Button'),
            ),
            // ? Disable Button
            const TextButton(
              onPressed: null,
              child: Text('Disable Button'),
            ),
            // ? Button with Icon
            TextButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.room_rounded),
              label: const Text('My Location'),
              // ? Styling Menggunakan styleFrom()
              style: TextButton.styleFrom(
                primary: Colors.white,
                backgroundColor: Colors.blue,
                elevation: 10.0,
                textStyle: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            // ? Styling Menggunakan ButtonStyle()
            TextButton(
              onPressed: () {},
              style: ButtonStyle(
                side: MaterialStateProperty.all(
                  const BorderSide(
                    width: 2,
                    color: Colors.red,
                  ),
                ),
                foregroundColor: MaterialStateProperty.all(Colors.black),
                padding: MaterialStateProperty.all(
                  const EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 50,
                  ),
                ),
                textStyle: MaterialStateProperty.all(
                  const TextStyle(
                    fontSize: 15.0,
                  ),
                ),
              ),
              child: const Text('Primary Button'),
            ),
            // ? 2. ELEVATED BUTTON()
            ElevatedButton(
              onPressed: () {},
              child: const Text('hallo'),
            ),
            ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.place),
              label: const Text('HIT ME'),
              style: ElevatedButton.styleFrom(
                primary: Colors.pink,
                fixedSize: const Size(150, 30),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
            ConstrainedBox(
              constraints: const BoxConstraints.tightFor(
                width: 150,
                height: 30,
              ),
              child: ElevatedButton(
                onPressed: () {},
                child: const Text('150 x 30'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
