void main() {
  // Operator perbandingan ini akan mengembalikan nilai dalam bentuk boolean.
  if (2 <= 3) {
    print("Yes, 2 kurang dari 3");
  } else {
    print("Anda salah");
  }

  if (2 < 3 && 2 + 4 == 5) {
    print("Untuk mencetak ini semua kondisi harus benar");
  } else {
    print(
        "2 kurang dari 3, tapi 2 + 4 tidak sama dengan 5 maka ini akan tampil");
  }

  // ignore: dead_code
  if (false || true || false) {
    print("ada satu nilai yang true");
    // ignore: dead_code
  } else {
    print("Jika semuanya false, maka ini akan tampil");
  }
}
