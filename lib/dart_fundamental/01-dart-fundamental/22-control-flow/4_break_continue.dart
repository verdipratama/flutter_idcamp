import 'dart:io';

// Anda memiliki aplikasi yang menyimpan data 20 bilangan prima pertama. Pengguna dapat mencari bilangan prima lalu komputer akan menampilkan urutan berapa bilangan tersebut. Ketika bilangan prima tersebut sudah ditemukan tentunya komputer tidak perlu melanjutkan proses perulangan lagi. Nah, di sinilah kita bisa menggunakan break untuk menghentikan dan keluar dari proses iterasi.
void main() {
  print("BREAK KEYWORD: ");
  var primeNumbers = [
    2,
    3,
    5,
    7,
    11,
    13,
    17,
    19,
    23,
    29,
    31,
    37,
    41,
    43,
    47,
    53,
    59,
    61,
    67,
    71
  ];

  stdout.write("Masukan bilangan prima: ");
  int searchNumber = int.parse(stdin.readLineSync()!);

  // loop primeNumbers
  for (var i = 0; i < primeNumbers.length; i++) {
    if (searchNumber == primeNumbers) {
      print("$searchNumber adalah bilangan prima ke-${i + 1}");
      break;
    }
    print("$searchNumber != ${primeNumbers[i]}");
  }

  print("CONTINUE KEYWORD: ");
  for (int i = 1; i < 5; i++) {
    if (i % 3 == 0) {
      continue;
    }
    print(i);
  }
}
