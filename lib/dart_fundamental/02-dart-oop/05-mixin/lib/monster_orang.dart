import 'mixin/drink_mixin.dart';
import 'skill/flying_monster.dart';
import 'monster.dart';

// Tambahin mixin, tidak perlu overide bisa menambahkan juga pakai ,, sama seperti implemnet
// Turunan dari class Monster
class MonsterOrang extends Monster with DrinkMixing implements FlyingMonster {
  // Method
  @override
  String fly() => "Aku adalah Monster Orang bisa Terbang...";

  // Bisa ngeoveride / menimpa function dari Monster.dart
  @override
  String move() {
    return "Berjalan... Jalan... Santuyy";
  }
}
