class Human {
  String? name;
  int? age;

  // Human(String name, int age) {
  //   this.name = name;
  //   this.age = age;
  // }

  // Bisa disingkat
  Human(this.name, this.age);

  // Named Constructor
  // Human.Name(this.name);
  // Human.Age(this.age);
}

void main() {
  Human bio = Human('John Doe', 30);

  print(bio.name);
  print(bio.age);
}
