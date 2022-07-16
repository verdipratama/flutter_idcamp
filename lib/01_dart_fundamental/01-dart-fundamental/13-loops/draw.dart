import 'dart:io';

void kotak() {
  int i, j, row = 5;
  for (i = 0; i < row; i++) {
    for (j = 0; j < 6; j++) {
      stdout.write("* ");
    }
    print("");
  }
}

void segitiga() {
  int i, j, row = 6;
  for (i = 0; i < row; i++) {
    for (j = row - i; j > 1; j--) {
      stdout.write(" ");
    }
    for (j = 0; j <= i; j++) {
      stdout.write("* ");
    }
    print("");
  }
}

void main() {
  kotak();
  print("===========");
  segitiga();
  print("===========");
}
