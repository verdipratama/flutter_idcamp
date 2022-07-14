class Person {
  late String name;
  late int age;

  // bisa disingkat
  // Person(this.name, this.age);

  Person({String name = 'EMPTY PERSON', int age = 0}) {
    print("CONSTRUCTOR: PERSON (INDUKNYA)");
    this.name = name;
    this.age = age;
  }
}
