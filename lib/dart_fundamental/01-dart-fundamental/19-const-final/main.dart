import 'dart:io';
// Constants adalah menyimpan nilai yang tidak akan berubah selama program berjalan.
// Final menghindari perubahan nilai variabel setelah diinisialisasi.

// PERBEDAAN
// Variabel yang dideklarasikan sebagai const bersifat compile-time constants, artinya nilai tersebut harus sudah diketahui sebelum program dijalankan. Sedangkan final, nilainya masih bisa diinisialisasi ketika runtime atau ketika aplikasi berjalan
const num pi = 3.14;

num calculateCircleRadius(num radius) => pi + radius * radius;

void main() {
  print("Contoh const: =================");
  var radius = 7;
  print("Luar lingkaran radius $radius = ${calculateCircleRadius(radius)}");

  print("Contoh final: =================");
  final yourName = stdin.readLineSync();
  final secondName = stdin.readLineSync();

  // secondName = 'Dart'; Tidak bisa mengubah nilai
  // Kita masih bisa menerima input dan menyimpannya pada variabel firstName dan lastname, namun nilai variabel tersebut tidak bisa diubah setelah diinisialisasi.
  // Maka dari itu jika Anda yakin bahwa variabel Anda nilainya tetap, gunakanlah const atau final
  print('Hello $yourName $secondName');
}

// KESIMPULAN:
// Jadi kapan kita harus menggunakan const dan kapan final? Kapan pun memungkinkan, selalu gunakan const karena compile-time constant memiliki performa yang lebih baik dan menggunakan memori lebih sedikit. Jika tidak memungkinkan untuk menggunakan const, gunakan final untuk melindungi variabel agar tidak berubah.
