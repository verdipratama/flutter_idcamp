// Property yang private artinya hanya bisa diakses pada berkas atau library yang sama. Kita akan membutuhkan private property ini di saat kita tidak ingin objek diubah dari luar. Karena Dart tidak memiliki modifier private, sebagai gantinya kita perlu menambahkan underscore (_) sebelum nama property.

class Animal {
  String _name = '';
  // ignore: unused_field
  int _age = 0;
  double _weight = 0;

  Animal(this._name, this._age, this._weight);

  // Setter
  set setName(String value) {
    _name = value;
  }

  // Getter
  String get name => _name;
  double get weight => _weight;
  // SAMA AJA
  int get age {
    return _age;
  }

  void eat() {
    print("$_name is eating");
    _weight = _weight + 0.5;
  }

  void sleep() {
    print("$_name is a fall sleep");
  }

  void poop() {
    print("$_name is a Popping");
    _weight = _weight - 0.1;
  }
}
