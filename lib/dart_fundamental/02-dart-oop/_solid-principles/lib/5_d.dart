void main() {
  UserManager store = UserManager(LocalStorage());
  print(store);
}

class User {
  // User related things
}

class UserManager {
  final IDatastorage datastorage;

  UserManager(this.datastorage);

  void saveUserData(User user) {
    datastorage.saveData(user);
  }
}

abstract class IDatastorage {
  void saveData(User user);
}

// DETAILS:
class FirebaseStorage implements IDatastorage {
  @override
  void saveData(User user) {
    // connect to firebase
    // save data
  }
}

class LocalStorage implements IDatastorage {
  @override
  void saveData(User user) {
    // connect to local storage
    // save data
  }
}
