void main() {
  List<Person> p = [
    Person('Administrator', 40),
    Person('User', 23),
    Person('Manager', 33),
    Person('Supervisor', 19),
    Person('Keuangan', 26),
    Person('Merchant', 20),
    Person('Administrator', 40),
    Person('User', 23),
    Person('Manager', 33),
    Person('Supervisor', 19),
    Person('Keuangan', 26),
    Person('Merchant', 20),
  ];

  // Mengurutkan dengan Angka
  // kecil -> besar
  // p.sort((a, b) => a.age - b.age);
  // besar -> kecil
  // p.sort((a, b) => b.age - a.age);

  // Mengurutkan dengan Huruf
  // p.sort((a, b) => a.role.compareTo(b.role));

  // p.sort((a, b) {
  //   if (a.role.compareTo(b.role) != 0) {
  //     return a.role.compareTo(b.role);
  //   } else {
  //     return a.age.compareTo(b.age);
  //   }
  // });

  p.sort((a, b) {
    if (a.getRoleWeight - b.getRoleWeight != 0) {
      return a.getRoleWeight - b.getRoleWeight;
    } else {
      return a.age.compareTo(b.age);
    }
  });

  p.forEach((element) {
    print(element.role + ' - ' + element.age.toString());
  });
}

class Person {
  final String role;
  final int age;

  Person(this.role, this.age);

  int get getRoleWeight {
    switch (role) {
      case 'Manager':
        return 1;
      case 'Supervisor':
        return 2;
      case 'Keuangan':
        return 3;
      default:
        return 4;
    }
  }
}
