// ignore_for_file: slash_for_doc_comments
// ignore_for_file: file_names

/**
 * * Flutter Tutorials: Image
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
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Center(
          child: Text('IDCamp: Image'),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            // ? Local image
            Image.asset(
              'assets/img/cip.png',
              // ? The propertyfit: BoxFit.containwill limit the whole image to defined height.
              fit: BoxFit.contain,
              height: 350.0,
              width: 350.0,
            ),
            const SizedBox(
              height: 20.0,
            ),
            // ? Network Image
            Image.network(
              'https://static.vecteezy.com/system/resources/thumbnails/004/924/971/small/abstract-luxury-modern-background-3d-free-vector.jpg',
              width: MediaQuery.of(context).size.width,
              height: 200.0,
              // height: 180.0,
              // width: 180.0,
            ),
          ],
        ),
      ),
    );
  }
}
