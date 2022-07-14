// Final menghindari perubahan nilai variabel setelah diinisialisasi.
// Constants adalah menyimpan nilai yang tidak akan berubah selama program berjalan.

// TOP LEVEL
// (Bisa dipakai dimanapun)
const pi = 3.14;

void main() {
  // FINAL
  // harus di inisialisasi di awal
  // Hanya bisa sekali dipasang
  // tidak bisa membuat object baru
  // selalu menunjuk ke obj yang sama
  // final int f = 5;
  // f = 7;
  final int f = 10;
  print(f);

  // CONSTATANTS
  var a = const ConstClass();
  var b = const ConstClass();

  var c = const ConstClass();
  var d = ConstClass();

  print(identical(a, b)); // true [identical] = [sama]
  print(identical(c, d)); // false
  print(pi);
}

// Bisa juga menulis final di dalam class
class FinalClass {
  final int number;
  FinalClass(this.number);
}

class ConstClass {
  final int? number;
  const ConstClass([this.number]);
}
