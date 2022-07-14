import 'dart:io';

String prompt(String promptText) {
  print(promptText);
  String answer = stdin.readLineSync()!;
  return answer;
}

void main() {
  String q1 = prompt('Enter a color?');
  String q2 = prompt('Enter a hobby?');

  print("The color is: ${q1}");
  print("My hobby is: ${q2}");
}
