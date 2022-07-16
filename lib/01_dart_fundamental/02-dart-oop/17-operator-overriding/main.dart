void main() {
  int a = 5;
  int b = 5;
  String sa = 'Hello';
  String sb = 'World';

  print(a + b); // 10
  print(sa + sb); // HelloWorld

  // !!! OPERATOR OVERRIDING IN CLASS !!!
  Hero ha = Hero(10);
  Hero hb = Hero(10);

  print((ha + hb).power); // 20
  print((ha == hb)); // true
  print((ha + 12).power); // 22
  print((ha > hb)); // false
}

class Hero {
  final int power;

  Hero(this.power);

  // Hero operator +(Hero other) {
  //   return Hero(power + other.power);
  // }

  // BISA BERBAGAI OPERATOR
  Hero operator +(var other) {
    if (other is Hero) {
      return Hero(power + other.power);
    } else if (other is int) {
      return Hero(power + other);
    } else {
      return this;
    }
  }

  // @override
  bool operator ==(var others) {
    if (others is Hero) {
      if (others.power == power) {
        return true;
      }
    }
    return false;
  }

  bool operator >(var other) {
    if (other is Hero) {
      if (power > other.power) {
        return true;
      }
    }
    return false;
  }
}
