import 'lib/hero.dart';
import 'lib/monster.dart';
import 'lib/monster_binatang.dart';
import 'lib/monster_orang.dart';

void main() {
  // h, m, mo, mb adalah Identifier
  Hero h = Hero();
  Monster m = Monster();
  MonsterOrang mo = MonsterOrang();
  MonsterBinatang mb = MonsterBinatang();

  List<Monster> monsters = [];

  monsters.add(MonsterOrang());
  monsters.add(MonsterOrang());
  monsters.add(MonsterBinatang());

  // kasih tau kalo monster itu adalah monster binatang
  // as = sebagai
  // ignore: unnecessary_cast
  print((mb as MonsterBinatang).binatang());

  for (Monster m in monsters) {
    // kalo monsternya adalah orang | is adalah ..
    if (m is MonsterOrang) {
      print(m.eatHuman());
    }
  }

  h.healthPoint = -10;
  m.healthPoint = 10;

  print("Hero HP: " + h.healthPoint.toString());
  print("Monster HP: " + m.healthPoint.toString());

  print(h.killMonster());
  print(m.eatHuman());

  print(mo.orang());
  print(mb.binatang());
}
