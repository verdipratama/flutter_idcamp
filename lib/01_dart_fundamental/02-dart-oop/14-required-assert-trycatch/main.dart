void main() {
  // Fungsi exception menangani /
  // mengamankan program dari crash.
  try {
    Person p = Person(name: null);
    print(p.name);
    print(p.age);
  } catch (e, s) {
    print(e);
    print(s);
  }
}

class Person {
  final String? name;
  final int? age;

  // Required artinya: (Wajib diisi)
  Person({required this.name, this.age = 0}) {
    // Assert (Menegaskan/Meyakinkan)
    assert(name != null, "You must give the person's name");
  }
}
