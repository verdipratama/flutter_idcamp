// Enkapsulasi adalah kondisi di dalam class dibungkus dan bersifat private.
// Karena Dart tidak memiliki modifier private, sebagai gantinya kita perlu menambahkan underscore (_)
// Cara mengaksesnya menggunakan Setter dan Getter!
import 'dart:io';
import 'lib/PersegiPanjang.dart';

void main() {
  // Identifier (Nama lain)
  PersegiPanjang nama, job, kotak1, kotak2;

  nama = new PersegiPanjang();
  nama.setName = 'ASUUUUU';

  print("Hello: my name is: ${nama.getName}");
  print("==========================");

  job = new PersegiPanjang();
  job.setWork("SOFTWARE ENGINNER!!!!");

  print("I am: ${job.getWork()}");
  print("==========================");

  /**
   * KOTAK PERTAMA
   */

  kotak1 = PersegiPanjang();

  kotak1.setPanjang = -2;
  kotak1.setLebar = 3;

  /**
   * KOTAK KEDUA
   */

  kotak2 = PersegiPanjang();

  print("Masukan Angka: ");
  kotak2.setPanjang = double.parse(stdin.readLineSync()!);

  print("Masukan Angka: ");
  kotak2.setLebar = double.parse(stdin.readLineSync()!);

  // double result = kotak1.hitungLuas() + kotak2.hitungLuas();
  double result = kotak1.luas + kotak2.luas;

  print("Hasilnya adalah: $result");
}
