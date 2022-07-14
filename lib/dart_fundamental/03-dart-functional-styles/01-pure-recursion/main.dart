void main() {
  // ? pure function
  print(sum(1, 1)); // 2

  // ? Recursive function
  print(fibo(0)); // 0

  // ? immutable, artinya kita tidak bisa mengubah sebuah variabel ketika sudah diinisialisasi
  // Contoh tidak immutable
  var x = 5;
  x = x + 1;
  print(x); // 6
}

// !! PURE FUNCTION !!
// fungsi bergantung pada argumen atau parameter yang dimasukkan ke dalamnya.
int sum(num1, num2) {
  return num1 + num2;
}

// !! Recursion !!
// dapat memanggil fungsi itu sendiri
int fibo(int n) {
  if (n <= 0) {
    return 0;
  } else if (n == 1) {
    return 1;
  } else {
    return fibo(n - 1) + fibo(n - 2);
  }
}
