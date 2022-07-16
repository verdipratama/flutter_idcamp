void main() {
  // Opsi 1
  myHOC('Jumlah:', sum);

  // Opsi 2 inline:
  myHOC('Jumlah:', (num1, num2) => num1 + num2);
}

void myHOC(String message, Function myFunction) {
  print(message);
  print(myFunction(2, 2));
}

// Opsi 1
Function sum = (int n1, int n2) => n1 + n2;
