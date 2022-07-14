import 'class/Cat.dart';

void main() {
  Cat anotherCat = Cat('Johny', 20, 23.1, 'RED');

  anotherCat.walk();
  anotherCat.eat();

  print(anotherCat.name);
  print(anotherCat.furColor);

  print(anotherCat.weight);
}
