import 'person.dart';

// SUPERCLASS
// Jika main classnya kosong
// bisa ditentukan nilai defaultnya
// class Student extends Person {
//   Student() : super('NEW STUDENT', 0) {
//     print("CONSTUCTOR: SUDENT");
//   }
// }

class Student extends Person {
  Student({String studentName = 'EMPTY STUDENT', int studentAge = 0})
      : super(name: studentName, age: studentAge) {
    print("CONSTRUCTOR: STUDENT (ANAK-NYA)");
  }
}
