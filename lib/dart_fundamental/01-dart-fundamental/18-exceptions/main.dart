// Fungsi exception menangani / mengamankan program dari crash
void main() {
  try {
    var a = 7;
    var b = 0;
    print(a ~/ b);
  } on Exception {
    print("Tidak bisa membagi bilangan lain dengan 0");
  }

  print('===========================================');
  // Menggunakan catch untuk mengetahui apa yang error!
  try {
    var a = 7;
    var b = 0;
    print(a ~/ b);
  } catch (e, s) {
    print("Error dari: ${e}"); // exceptions
    print("Stack trace: ${s}"); // stack trace
  }

  print('===========================================');
  print("Mekanisme exception handling");
  try {
    var a = 7;
    var b = 0;
    print(a ~/ b);
  } catch (e) {
    print("Error dari: ${e}"); // exceptions
  } finally {
    print("Finally akan dijalankan apapun yang terjadi");
  }
}
