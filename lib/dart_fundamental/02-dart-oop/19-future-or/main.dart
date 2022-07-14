import 'dart:async';

void main() async {
  User user = User();
  UserManager result = UserManager(LocalStorage());

  print(await result.getUserAge(user));
}

class User {
  // User related things
  int age = 0;
}

class UserManager {
  final IDatastorage datastorage;

  UserManager(this.datastorage);

  void saveUserData(User user) {
    datastorage.saveData(user);
  }

  // import dart async
  // Future integer mengembalikan tipe Future/int
  FutureOr<int> getUserAge(User user) async {
    return await datastorage.getUserAge(user);
  }
}

abstract class IDatastorage {
  void saveData(User user);
  FutureOr<int> getUserAge(User user);
}

// DETAILS:
class FirebaseStorage implements IDatastorage {
  @override
  void saveData(User user) {
    // connect to firebase
    // save data
  }
  @override
  Future<int> getUserAge(User user) async {
    await Future.delayed(Duration(seconds: 5));
    return 20;
  }
}

class LocalStorage implements IDatastorage {
  @override
  void saveData(User user) {
    // connect to local storage
    // save data
  }
  @override
  int getUserAge(User user) {
    // ? Ambil tanggal lahir dari user
    // ? Bandingkan tanggal lahir dengan tanggal sekarang
    // ? Hitung umurnya
    return 30;
  }
}
