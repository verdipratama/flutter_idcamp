// Dart juga dilengkapi dengan cascade notation atau cascade operator.
// Operator ini memungkinkan kita untuk melakukan beberapa urutan operasi pada objek yang sama.
// Kita bisa mengakses property dari object dan menjalankan method di dalamnya bersamaan ketika kita menginstansiasi object.
// Cascade operator dituliskan dengan dua tanda titik (.. atau ?..).

class Bio {
  String name;
  int age;

  Bio(this.name, this.age);

  void checkName() {
    print("My name is $name");
  }
}

void main() {
  Bio check = Bio('Joh', 20)
    ..name = 'Gray'
    ..checkName();

  // sama seperti
  // check.name = 'ANDI';

  print(check.name);
}
