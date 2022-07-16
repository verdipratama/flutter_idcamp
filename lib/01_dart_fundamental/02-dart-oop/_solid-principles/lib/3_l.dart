abstract class Duck {
  void swim() {
    // ...
  }
  void quack() {
    // ...
  }

  void move();
}

class MonsterDuck extends Duck {
  @override
  void move() {
    // ...
  }
}

class AlienDuck extends Duck {
  @override
  void move() {
    // ...
  }
}
