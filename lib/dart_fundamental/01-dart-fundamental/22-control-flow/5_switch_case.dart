import 'dart:io';

String _promptText(String promptText) {
  print(promptText);
  String answer = stdin.readLineSync()!;
  return answer;
}

int _propmtNum() {
  print("Enter a number: ");
  int myNum = int.parse(stdin.readLineSync()!);
  return myNum;
}

void main() {
  print("++++================================++++");
  print("    WELCOME TO SMART CALCULATOR CLI     ");
  print("++++================================++++");

  String t1 = _promptText("Enter a yourname:");

  print("Hallo, Welcome Back ${t1}");

  String t2 = _promptText("Are you ready? Please type yes/no");

  // if user type No
  if (t2.contains('no')) {
    print("Ok, Goodbye..");
    exit(0);
  }

  int n1 = _propmtNum();
  int n2 = _propmtNum();

  String op = _promptText("Enter an operation (+,-,/,*)");

  switch (op) {
    case '+':
      int result = n1 + n2;
      print("Your answer is: ${result}");
      break;

    case '-':
      int result = n1 - n2;
      print("Your answer is: ${result}");
      break;

    case '/':
      double result = n1 / n2;
      print("Your answer is: ${result}");
      break;

    case '*':
      int result = n1 * n2;
      print("Your answer is: ${result}");
      break;

    default:
      print("Operator not found!");
  }
}
