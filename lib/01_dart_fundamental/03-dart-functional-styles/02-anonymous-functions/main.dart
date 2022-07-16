void main() {
  print(sum(1, 2)); // 3
  printLambda();

  var sums = (int num1, int num2) {
    return num1 + num2;
  };

  Function testAnon = () {
    print('This is lambda function');
  };

  print(sums(1, 2));
  testAnon();
}

// !! FUNCTION EXPRESSION DENGAN FAT ARROW =>
var sum = (int num1, int num2) => num1 + num2;
Function printLambda = () => print("This is Lambda/Anon Function");
