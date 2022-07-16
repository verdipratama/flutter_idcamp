bool _ArrCompare(List a, List b) {
  for (var i = 0; i < a.length; i++) {
    print(a[i]);
    print(b[i]);

    if (a[i] != b[i]) {
      return false;
    }
  }
  return true;
}

void main() {
  print(_ArrCompare([1, 2], [1, 2]));
}
