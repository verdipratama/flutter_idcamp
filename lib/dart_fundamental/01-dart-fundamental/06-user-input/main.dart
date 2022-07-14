import 'dart:io'; // dart input output

// sejak versi 2.12, Dart memiliki fitur null safety di mana suatu variabel secara default tidak bisa memiliki nilai null. Solusinya, kita bisa menambahkan tanda tanya (?) setelah tipe data supaya bisa menyimpan nilai null atau memberikan nilai parameter default. Nilai ini akan digunakan jika kita tidak memasukkan parameternya.

void main() {
  print("++++================================++++");
  print("    WELCOME TO DART:IO (INPUT - OUTPUT) ");
  print("++++================================++++");

  print("What's your name?");
  String? inputUsername = stdin.readLineSync();

  print("Hello ${inputUsername}");

  print("What's your favorite number?");
  int? inputNumber = int.parse(stdin.readLineSync()!);

  print("Your favorite number is ${inputNumber}");

  // Another display print
  stdout.write('Bye... ');
}
