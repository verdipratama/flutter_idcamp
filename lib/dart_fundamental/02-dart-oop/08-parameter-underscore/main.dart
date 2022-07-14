// Ignore parameter
// Parameter underscore
// Mengabaikan nilai yang akan dimasukan pada parameter tersebut!
void main() {
  // Person p = Person('David', doingHobby: myHobby);
  Person p = Person('David', doingHobby: (_) {
    print("is swimming!");
  });

  p.takeARest();
}

class Person {
  String name;
  Function(String name) doingHobby;

  Person(this.name, {required this.doingHobby});

  void takeARest() {
    // ignore: unnecessary_null_comparison
    if (doingHobby != null) {
      doingHobby(name);
    }
  }
}

// void myHobby(String name) {
//   print("$name is swimming!");
// }
