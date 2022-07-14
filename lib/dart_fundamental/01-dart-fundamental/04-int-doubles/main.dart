import 'dart:math';

void main() {
  int quantity = 300;
  double price = 3.99;

  //Sejak versi Dart 2.1, kita bisa menuliskan tipe data double tanpa menuliskan angka di belakang koma secara literal.
  double withoutDecimal = 7;

  // String -> int
  var eleven = int.parse('11');

// String -> double
  var elevenPointTwo = double.parse('11.2');

// int -> String
  var elevenAsString = 11.toString();

// double -> String
  var piAsString = 3.14159.toStringAsFixed(2);

  print(withoutDecimal); // 7.0
  print(eleven); // 11
  print(elevenPointTwo); // 11.2
  print(elevenAsString); // 11
  print(piAsString); // String piAsString = '3.14'

  print("========================");

  quantity = quantity + 50;
  quantity += 50; // + 50
  quantity++; //  +1

  print(5 + 5);
  print(5 + 3 * (2 / 7));
  print(quantity + price); // 404.99
  print(quantity); // 401

  // Dont forget import dart:math
  print(min(1, 1)); // 1
  print(sqrt(144)); // 12.0
}
