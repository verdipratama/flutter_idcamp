import 'dart:io';

void main() {
  print("++++================================++++");
  print("    WELCOME TO DART:IO (INPUT - OUTPUT) ");
  print("++++================================++++");

  print("Enter your first number?");
  int? inputNumber1 = int.parse(stdin.readLineSync()!);

  print("Enter your second number?");
  int? inputNumber2 = int.parse(stdin.readLineSync()!);

  int total = inputNumber1 + inputNumber2;
  print("Your sum is ${total}");
}
