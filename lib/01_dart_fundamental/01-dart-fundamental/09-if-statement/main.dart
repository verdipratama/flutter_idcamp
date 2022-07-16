void main() {
  if (true) {
    print("yes true: berisi boolean T/F");
  }

  bool isSmart = true;

  if (isSmart) {
    print("You are smart");
    // ignore: dead_code
  } else {
    print("You should study more");
  }

  String greetings = 'Hello';

  if (greetings.contains('o')) {
    print("Yes, it's true");
  } else {
    print("Ups, you are wrong!");
  }

  if (5 > 3) print("true");
  if (5 == 5) print("BENAR!!");
}
