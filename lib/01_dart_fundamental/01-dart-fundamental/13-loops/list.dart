void main() {
  // List<String> arr = ['Hello', 'World', 'Welcome'];
  var arr = ['Hello', 'World', 'Welcome'];
  for (var i = 0; i < arr.length; i++) {
    print(arr[i]);
  }

  print("===============");
  var nums = [1, 2, 3, 4, 5];
  for (var i in nums) {
    print(i);
    //if (i % 2 == 0) print(i);
  }
}
