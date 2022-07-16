import 'dart:io';

void main() {
  // Identifier (Nama lain)
  PersegiPanjang kotak1, kotak2;

  kotak1 = PersegiPanjang();

  print("Masukan Angka: ");
  kotak1.panjang = double.parse(stdin.readLineSync()!);

  print("Masukan Angka: ");
  kotak1.lebar = double.parse(stdin.readLineSync()!);

  kotak2 = PersegiPanjang();

  print("Masukan Angka: ");
  kotak2.panjang = double.parse(stdin.readLineSync()!);

  print("Masukan Angka: ");
  kotak2.lebar = double.parse(stdin.readLineSync()!);

  double result = kotak1.hitungLuas() + kotak2.hitungLuas();

  print("Hasilnya adalah: $result");
}

class PersegiPanjang {
  // Field
  late double panjang;
  late double lebar;

  // Method
  double hitungLuas() {
    return this.panjang * this.lebar;
  }

  // Shorthand
  // double hl() => panjang * lebar;
}
