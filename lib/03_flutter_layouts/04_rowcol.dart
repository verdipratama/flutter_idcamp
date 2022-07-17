/**
 * * Flutter Tutorials: Row & Column Widgets
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
          //crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Icon(Icons.star, size: 50.0, color: Colors.blue),
            const Icon(Icons.star, size: 50.0, color: Colors.blue),
            const Icon(Icons.star, size: 50.0, color: Colors.blue),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const <Widget>[
                Icon(Icons.star, size: 50.0, color: Colors.blue),
                Icon(Icons.star, size: 50.0, color: Colors.blue),
                Icon(Icons.star, size: 50.0, color: Colors.blue),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
