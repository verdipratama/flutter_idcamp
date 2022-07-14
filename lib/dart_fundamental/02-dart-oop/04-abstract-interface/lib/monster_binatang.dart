import 'monster.dart';

// Turunan dari class Monster
class MonsterBinatang extends Monster {
  // Method
  String swim() => "Aku adalah Monster Binatang...";

  // Bisa ngeoveride / menimpa dari Monster.dart
  @override
  String eatHuman() {
    return "Monster Makan Orang";
  }

  // Bisa ngeoveride / menimpa dari Monster.dart
  @override
  String move() {
    return "Berenanggg... renanggg......";
  }
}
