import 'dart:io';

double _promptDouble(String prompText) {
  print(prompText);
  double? number = double.parse(stdin.readLineSync()!);
  return number;
}

class MathQuestion {
  // fix add late keyword
  // https://stackoverflow.com/questions/67056727/error-try-adding-an-initializer-expression-or-add-a-field-initializer-in-this
  late String question;
  late double answer;

  MathQuestion(String question, double answer) {
    this.question = question;
    this.answer = answer;
  }
}

void main() {
  List<MathQuestion> quest = [
    MathQuestion('2 + 5', 8.0),
    MathQuestion('5 + 5', 10.0),
    MathQuestion('50 + 50', 100.0)
  ];

  int score = 0;

  for (MathQuestion mq in quest) {
    double userAnswer = _promptDouble(mq.question);
    if (userAnswer == mq.answer) {
      score++;
    }
  }

  print("You got score ${score / quest.length * 100}");

  // for (var i = 0; i < quest.length; i++) {
  //   double userAnswer = _promptDouble(quest[i].question);
  //   if (userAnswer == quest[i].answer) {
  //     print("Correct!");
  //   } else {
  //     print("Incorrect. the answer was ${quest[i].answer}");
  //   }
  // }

  // print(quest[0].question);

  // MathQuestion q1 = new MathQuestion('2 + 5', 8.0);
  // MathQuestion q2 = new MathQuestion('5 + 5', 10.0);
  // MathQuestion q3 = new MathQuestion('50 + 50', 100.0);

  // print(q1.question);
  // print(q2.question);
  // print(q3.question);

  // q1.question = 'How to make money?';
  // print(q1.question);
}
