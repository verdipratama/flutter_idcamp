void main() {
  bool isRaining = true;

  if (isRaining) {
    print("Oh, bring an umbrella");
    // ignore: dead_code
  } else {
    print("Going to the office");
  }

  print("==============================");
  num now = 17;
  num openHours = 8;
  num closeHours = 21;

  if (now > openHours && now < closeHours) {
    print("Hello, we're Open!");
  } else {
    print("Ups sorry, we've closed!!!!");
  }

  print("==============================");
  print("EXAMPLE: Condition Expressions");

  var shopStatus = now > openHours ? "Hello, we OPEN" : "Sorry, we've closed";
  print(shopStatus);

  String? name = null;
  String buyer = name ?? 'USER';

  print(buyer);
}
