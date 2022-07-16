import 'skill/flying_monster.dart';
import 'monster.dart';

// Turunan dari class Monster
class MonsterOrang extends Monster implements FlyingMonster {
  // Method
  @override
  String fly() => "Aku adalah Monster Orang bisa Terbang...";

  // Bisa ngeoveride / menimpa function dari Monster.dart
  @override
  String move() {
    return "Berjalan... Jalan... Santuyy";
  }
}
