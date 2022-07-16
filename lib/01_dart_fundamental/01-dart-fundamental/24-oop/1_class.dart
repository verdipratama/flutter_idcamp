class Animal {
  String name;
  int age;
  double weight;

  Animal(this.name, this.age, this.weight);

  void eat() {
    print("$name is eating");
    weight = weight + 0.5;
  }

  void sleep() {
    print("$name is a fall sleep");
  }

  void poop() {
    print("$name is a Popping");
    weight = weight - 0.1;
  }
}

void main() {
  var ani = Animal('Grey', 30, 29.9);

  ani.eat();
  ani.sleep();
  ani.poop();

  print(ani.weight);
}
