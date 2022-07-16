import 'dart:io';

void main() {
  print("Check bilangan ganjil/genap");
  print("Masukan angka:");
  int hasil = int.parse(stdin.readLineSync()!);

  if (hasil.isOdd) {
    print("$hasil adalah bilangan GANJIL");
  } else if (hasil.isEven) {
    print("$hasil adalah bilang GENAP");
  }
}
