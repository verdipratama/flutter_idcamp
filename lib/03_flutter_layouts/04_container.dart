/**
 * * Flutter Tutorials: Container Widgets
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
      body: Column(
        children: [
          Container(
            color: Colors.blue,
            height: 200,
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.only(top: 70, left: 40),
            child: const Text(
              'Heloo..',
              style: TextStyle(
                fontSize: 40.0,
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(height: 20),
          // ? Container with BoxDecoration
          Container(
            margin: const EdgeInsets.all(12),
            padding: const EdgeInsets.all(30),
            height: 150,
            width: MediaQuery.of(context).size.width,
            // ? With BoxDecoration()
            decoration: BoxDecoration(
              color: Colors.deepOrange,
              borderRadius: BorderRadius.circular(12),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black,
                  offset: Offset(1, 2),
                  blurRadius: 2,
                ),
              ],
              border: Border.all(
                color: Colors.black,
                width: 2.0,
              ),
              image: const DecorationImage(
                image: NetworkImage(
                    'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            child: const Text(
              'MYOWL',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Poppins',
                color: Colors.white,
                fontSize: 40.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
