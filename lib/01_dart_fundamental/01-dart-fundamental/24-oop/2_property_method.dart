import 'class/Animal.dart';

void main() {
  Animal test = Animal('Brownis', 10, 20.2);

  test.setName = 'Joe';

  print(test.name);
  print(test.age);
  print(test.weight);

  test.eat();
  test.poop();
  print(test.weight);
}
