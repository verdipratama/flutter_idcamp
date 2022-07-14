void main() {
  Monster m = Monster(status: MonsterStatus.normal)
    ..move()
    ..eat();

  // Bisa juga CASCADE notation seperti ini:
  m
    ..move()
    ..eat();
}

// ENUM mewakili pilihan
// ENUM / TYPE DATA
enum MonsterStatus { normal, poisoned, confused }

class Monster {
  // 1: normal
  // 2: Poisoned
  // 3: Confused
  final MonsterStatus status;

  Monster({this.status = MonsterStatus.normal});

  void move() {
    switch (status) {
      case MonsterStatus.normal:
        print("Monster is moving");
        break;
      case MonsterStatus.poisoned:
        print("Monster cannot move. Monster is dying, Need help");
        break;
      case MonsterStatus.confused:
        print("Monster is spinning, Dart languange is confusing");
        break;
      default:
        print("Dart languange is confusing");
    }
  }

  void eat() {
    print("Monster is eating programming dart");
  }
}
