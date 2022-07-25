// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:flutter_idcamp/flutter_challenges/screen_rotation/landscape.dart';
import 'package:flutter_idcamp/flutter_challenges/screen_rotation/portrait.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('IDCamp: Responsive'),
      ),
      body: const HomePortrait(),
    );
  }
}
