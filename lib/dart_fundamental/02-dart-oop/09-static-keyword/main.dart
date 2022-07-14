void main() {
  Person p = Person('John', 170);

  // print(p.age);
  // print(Person.maxAge);

  // Maximun agenya dari class Person
  // Bukan dari object person
  if (p.age > Person.maxAge) {
    print("VERY MAX AGE, your AGE is ${p.age}");
  }
}

class Person {
  late String name;
  late int age;
  static const int maxAge = 150;

  Person(String name, int age) {
    this.name = name;
    this.age = age;
    // this.age = (age > 150) ? 150 : age;
  }
}
