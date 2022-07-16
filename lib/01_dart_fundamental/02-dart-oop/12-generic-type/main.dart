// Generic type adalah sejenis keyword yang fungsinya menggantikan tipe data agar tipe data menjadi gobal.
void main() {
  // STRING
  var boxs = SecureBox<String>('halo', '123');
  print(boxs.allDataTypes('123')); // halo

  // INT
  var boxint = SecureBox<int>(100, '123');
  print(boxint.allDataTypes('123')); // 100

  // DATE TIME
  var boxdt = SecureBox<DateTime>(DateTime.now(), '123');
  print(boxdt.allDataTypes('123')); // Tanggal/jam hari ini

  // CLASS
  var boxcl = SecureBox<Person>(Person('JOE'), '123');
  print(boxcl.allDataTypes('123')!.name); // JOE

  print("=============================================");

  var boxtime = DateTimeSecureBox(DateTime.now(), '123');
  print(boxtime.getData('123')); // VALID
  print(boxtime.allDataTypes('123')); // jam sekarang
}

// GENERTIC TYPE
// Bisa juga ditulis selain T
// Bisa juga menggunakan multiple argument <X,Y,Z>
class SecureBox<T> {
  final T _data;
  final String _pin;

  SecureBox(this._data, this._pin);
  T? allDataTypes(String pin) => (pin == _pin) ? _data : null;
}

class DateTimeSecureBox {
  final DateTime _datas;
  final String _pins;

  DateTimeSecureBox(this._datas, this._pins);
  DateTime? allDataTypes(String pin) => (pin == _pins) ? _datas : null;

  String getData(String pin) {
    if (_pins == pin) {
      _datas;
    } else {
      return 'INVALID';
    }
    return 'VALID';
  }
}

class Person {
  final String name;
  Person(this.name);
}
