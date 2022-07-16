void main() {
  Bio d1, d2, d3;

  d1 = new Bio('John', 20);
  print(d1.name);
  print(d1.age);

  d2 = new Bio('Doe', 21);
  print(d2.name);
  print(d2.age);

  d3 = new Bio('Bla-bla', 40);
  print(d3.name);
  print(d3.age);
}

class Bio {
  late String name;
  late int age;

  Bio(String name, int age) {
    this.name = name;
    this.age = age;
  }

  // Shorthand
  // Bio(this.name, this.age);
}
