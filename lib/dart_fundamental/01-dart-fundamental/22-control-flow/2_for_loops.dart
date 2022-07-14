import 'dart:io';

void main() {
  for (int i = 1; i <= 5; i++) {
    print('Ini adalah: $i');
  }

  var stars = 10;

  for (var i = stars; i > 0; i--) {
    for (var j = stars; j > i; j--) {
      stdout.write("* ");
    }
    print("* ");
  }
}
