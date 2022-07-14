// Sejak dart 2.12 dart menghadirkan fitur null safety.
// error jika tidak menggunakan ?
// ? menunjukkan bahwa variabel favoriteFood boleh memiliki nilai null

void buyMeal(String? favoriteFood) {
  if (favoriteFood == null) {
    print("You have no choice!");
  } else {
    print("Bought $favoriteFood");
  }
}

void main() {
  String name = 'John doe';
  int age = 30;

  String? favoriteFood = null;

  buyMeal(favoriteFood);

  print(name);
  print(age);
}
