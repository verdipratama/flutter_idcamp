import 'lib/mixin/drink_mixin.dart';
import 'lib/monster.dart';
import 'lib/monster_binatang.dart';
import 'lib/monster_orang.dart';

void main() {
  List<Monster> monsters = [
    MonsterOrang(),
    MonsterOrang(),
    MonsterBinatang(),
    MonsterBinatang(),
  ];

  for (Monster m in monsters) {
    // print(m.move());
    // print(m.eatHuman());
    if (m is DrinkMixing) {
      print((m as DrinkMixing).drink());
    }
  }
}
