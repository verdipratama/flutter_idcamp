// Enkapsulasi adalah kondisi di dalam class dibungkus dan bersifat private.
// Property yang private artinya hanya bisa diakses pada berkas atau library yang sama.
// kalo dalam 1 file masih bisa diakses namun kalo buat folder class tidak bisa diakses harus di import

// Karena Dart tidak memiliki modifier private, sebagai gantinya kita perlu menambahkan underscore (_)
// Cara mengaksesnya menggunakan Setter dan Getter!
// Bisa milih salah satu mau SET atau GET tidak apa2
class PersegiPanjang {
  // Field
  late String _name;
  late String _work;

  late double _panjang;
  late double _lebar;

  // Setter
  // Method mengubah nilai panjang
  // setName/ getName bisa langsung menggunakan propertynya
  set setName(String value) {
    _name = value;
  }

  set setPanjang(double value) {
    // Optional: kondisi dimana user salah input ex: -1;
    if (value < 0) {
      value *= -1;
    }
    _panjang = value;
  }

  set setLebar(double value) {
    // Optional: kondisi dimana user salah input ex: -1;
    if (value < 0) {
      value *= -1;
    }
    _lebar = value;
  }

  // Getter
  // Memperlihatkan isi dari panjang
  double get getPanjang {
    return _panjang;
  }

  double get getLebar {
    return _lebar;
  }

  // Shorthand
  String get getName => _name;

  // Method
  double hitungLuas() {
    return this._panjang * this._lebar;
  }

  // Bisa juga menggunakan Getter
  // Tanpa Field
  double get luas => _panjang * _lebar;

  // Optional with argument:
  void setWork(String value) {
    _work = value;
  }

  String getWork() {
    return this._work;
  }
}
