abstract class Hero {
  // HERO
  void regulerAttack();
}

// !------------------------------------------------------------
// !------------------------------------------------------------

// KHUSUS MAGIC
abstract class ImagicCaster {
  void castMagic();
}

abstract class IHealer {
  void heal();
}

abstract class IStealer {
  void stealMoney();
}

// !------------------------------------------------------------
// !------------------------------------------------------------

// SEJATA
class Thief extends Hero implements IStealer {
  @override
  void regulerAttack() {
    // ..
  }

  void stealMoney() {
    // ...
  }
}

// !------------------------------------------------------------
// !------------------------------------------------------------

class WhiteMage extends Hero implements IHealer, ImagicCaster {
  @override
  void castMagic() {
    // ...
  }

  @override
  void heal() {
    // ...
  }

  @override
  void regulerAttack() {
    // ...
  }
}

// !------------------------------------------------------------
// !------------------------------------------------------------

class BlackMage extends Hero implements ImagicCaster {
  @override
  void castMagic() {
    // ...
  }

  @override
  void regulerAttack() {
    // ...
  }
}
