void main() {
  print('Hello World');

  Object text = 'HAHA';

  if (text is String) {
    print("Welcome, ${text.length}");
  } else {
    print("Text is not String!");
  }

  int nums = 0;
  nums++;

  print(nums); // 1
}
