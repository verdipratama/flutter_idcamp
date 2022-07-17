import 'package:flutter/material.dart';

const String webName = 'Flutter Tutorial: IDcamp';
const cheading = Colors.white;

class Constants {
  // ? App Names
  static String appName = 'IDCamp - Flutter Tutorials';

  // ? Colors
  static Color lights = Colors.black;
  static Color lightAccent = Colors.white;

  static ThemeData lightTheme(BuildContext context) {
    return ThemeData(
      backgroundColor: lights,
      appBarTheme: AppBarTheme(
        centerTitle: true,
        color: Colors.black,
        iconTheme: IconThemeData(
          color: lightAccent,
        ),
      ),
    );
  }
}
