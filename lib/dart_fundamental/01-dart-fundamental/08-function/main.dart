void call_me() {
  print('   / |');
  print('  /  |');
  print(' /   |');
  print('/____|');
}

// With parameter
void call_bio(String name, int age) {
  print("Hello my name is: ${name}");
  print("My age is: ${age}");
}

// Return statement
// return tidak bisa pakai void
int addNum(int n1, int n2) {
  return n1 + n2;
}

// ONE LINE ARROW FUNCTION
double average(num num1, num num2) => (num1 + num2) / 2;

// Root function
void main() {
  call_me();
  call_bio('Ferdi', 30);
  call_bio('Joe', 20);

  // tidak bisa langsung dipanggil
  print(addNum(2, 2));
  print(average(1, 1));

  int answer = addNum(1, 1);
  print("The answer is: ${answer}");
}
