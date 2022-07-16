import 'dart:io';

String _promptText(String text) {
  print(text);
  String? answer = stdin.readLineSync()!;
  return answer;
}

void main() {
  String answer = "Joe";
  String guess = "";
  int guessCount = 0;

  while (guess != answer) {
    guess = _promptText('Enter a guess:');
    if (guess != answer) {
      print("try again..");
    }
    guessCount++;
  }

  print("You win! in ${guessCount} fails");
}
