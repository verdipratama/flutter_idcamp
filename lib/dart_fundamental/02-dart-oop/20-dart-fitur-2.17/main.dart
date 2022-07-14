void main() {
  User u = User(1, 'admin');
  UserAuthException e = UserAuthException.invalidPassword;

  print(u.username); // admin
  print(e.code); // 100
  print(e.description); // Wrong password. Please try again.
  print(e.exceptionCodeInDouble); // 100.0
  print(e.toString()); // InvalidPassword is one of User Auth Exeptions
}

// !! NAMED PARAMETER !!
class User {
  int id;
  String username;
  String? fullname;
  int? age;

  // Parameter wajib ID & USERNAME
  // Optional parameter: FULLNAME & AGE
  // Optional parameter bisa dituker-tuker
  // untuk dart 2.17 bebas urutannya
  User(this.id, this.username, {this.fullname, this.age});
}

enum AdministratorType {
  generalAdministrator,
  securityAdministrator,
  superAdministator
}

// !! SUPER INITIALIZER !!
class Administrator extends User {
  AdministratorType administratorType;

  // NEW UPDATE
  Administrator(super.id, super.username,
      {super.fullname, required super.age, required this.administratorType});

  // OLD
  // Administrator(int id, String username,
  //     {String fullname = 'DEFAULT',
  //     required int age,
  //     required this.administratorType})
  //     : super(id, username, fullname: fullname, age: age);

}

// !! ENCHANCED ENUM !!
enum UserAuthException {
  invalidPassword(100, 'Wrong password. Please try again'),
  invalidUsername(200, 'Username is not exist');

  final int code;
  final String description;

  // BISA MEMBUAT CONSTRUCTOR
  const UserAuthException(this.code, this.description);

  // BISA MENAMBAHKAN GETTER
  double get exceptionCodeInDouble => code.toDouble();

  // BISA MENGOVERIDE TOSTRING (METHOD)
  String toString() => '$name is one of User Auth Exceptions';
}

// OLD
// enum UserAuthException {
//   invalidPassword,
//   invalidUsername,
// }

// extension ExceptionExample on UserAuthException {
//   String get description {
//     if (name == 'invalidPassword') {
//       return 'Wrong password, please try again';
//     } else {
//       return "Username is not exist";
//     }
//   }
// }
