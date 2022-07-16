import 'dart:io';

void _tes(String name) {
  var arr = ['Joe', 'Mey', 'Bowny'];
  for (int i = 0; i < arr.length; i++) {
    if (arr[i].contains('Joe')) {
      arr.add('miller');
    }
    print(arr[i].toUpperCase() + name);
    //print(arr[0][i]); // JOE
    // print(arr[i][0]); // JMB
  }
}

void _triangle() {
  var i, j, row = 6;
  for (i = 0; i < row; i++) {
    for (j = row; j > i; j--) {
      stdout.write(" ");
    }
    for (j = 0; j < i; j++) {
      stdout.write("* ");
    }
    print("");
  }
}

void main() {
  _tes(' is done! ✓');
  _triangle();
}
