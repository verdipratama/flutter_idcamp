// PATTERN SINGLETON
// Dimana satu buah class dibuat 1 object saja
// KITA DAPAT MENIMALISIR MEMORY KETIKA FETCH API KESEMUA HALAMAN

void main() {
  // !!! HASILNYA BEDA!!!
  Services service1 = Services();
  Services service2 = Services();

  if (service1 == service2) {
    print("SAMA");
  } else {
    print("BEDA");
  }

  // !!! HASILNYA SAMA !!!
  ServicesSingleton service3 = ServicesSingleton();
  ServicesSingleton service4 = ServicesSingleton();

  if (service3 == service4) {
    print("SAMA");
  } else {
    print("BEDA");
  }
}

class User {}

// !! CLASS YANG TIDAK MENERAPKAN SINGLETON !!
class Services {
  Future<User> getUserData() async {
    // Asuming that we get data from database and the return it.
    return User();
  }
}

// !! CLASS YANG MENERAPKAN PATTERN SINGLETON !!
class ServicesSingleton {
  // Buat static field
  // tipenya classnya
  static final ServicesSingleton _instance = ServicesSingleton._internal();

  // CONSTRUCTOR PRIVATE!!!
  // namanya BEBAS!! bisa internal bisa apa aja
  ServicesSingleton._internal();

  // method factory mengembalikan object yang baru atau yang sudah dibuat.
  // INI YANG AKAN DIPANGGIL -> BUKAN CONSTRATORNYA!!
  factory ServicesSingleton() {
    return _instance;
  }

  Future<User> getUserData() async {
    // Asuming that we get data from database and the return it.
    return User();
  }
}
