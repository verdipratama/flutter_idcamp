// Main class
class Character {
  // Field encapsulation
  late int _healthPoint;

  // Getter & Setter
  int get healthPoint {
    return _healthPoint;
  }

  set healthPoint(int value) {
    // biar tidak minus -1
    if (value < 0) {
      value *= -1;
    }

    _healthPoint = value;
  }
}
