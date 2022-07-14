import 'Animal.dart';

class Cat extends Animal {
  late String furColor;

  // Keyword super akan diarahkan ke constructor dari kelas Animal.
  Cat(String name, int age, double weight, String furColor)
      : super(name, age, weight) {
    this.furColor = furColor;
  }

  // MERINGKAS
  // Cat(String name, int age, double weight, this.furColor)
  //     : super(name, age, weight) {
  //   this.furColor = furColor;
  // }

  void walk() {
    print('$name is walking');
  }
}
