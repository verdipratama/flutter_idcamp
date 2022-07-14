// Abstract merupakan gambaran umum dari sebuah kelas.
// ia tidak dapat direalisasikan dalam sebuah objek
// + abstrak pada monster.dart
import 'lib/skill/flying_monster.dart';
import 'lib/monster.dart';
import 'lib/monster_binatang.dart';
import 'lib/monster_orang.dart';

void main() {
  List<Monster> monsters = [];

  monsters.add(MonsterBinatang());
  monsters.add(MonsterBinatang());
  monsters.add(MonsterOrang());
  monsters.add(MonsterOrang());

  // Mencegah dibuat object gunakan abstrak pada class Monster
  // monsters.add(Monster());

  for (Monster m in monsters) {
    // print(m.move());
    // print(m.eatHuman());
    if (m is FlyingMonster) {
      print((m as FlyingMonster).fly());
    }
  }
}
