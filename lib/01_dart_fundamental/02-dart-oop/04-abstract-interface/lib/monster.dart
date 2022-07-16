import 'character.dart';

// Extends menyatakan turunan class
// Monster turunan dari class Charcter!
abstract class Monster extends Character {
  // Method
  String eatHuman() {
    return "Ummm.. Yummy!";
  }

  // tambahkan @override pada turunannya agar bisa diakses!!!
  String move();

  /// This is an abstract method because it has no body.
  // void methodOne();

  /// This is NOT an abstract method because it has a body.
  // void methodTwo() {}
}
