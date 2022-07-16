// Abstract merupakan gambaran umum dari sebuah kelas.
// ia tidak dapat direalisasikan dalam sebuah objek
// AKAN TETAPI TURUNANNYA (inheritancenya) MASIH BISA DIAKSES

abstract class Abstrak {
  String hello;
  String world;

  Abstrak(this.hello, this.world);
}

void main() {
  // var tes = Abstrak('error', 'error'); // error
  //print(tes);
}
