import 'dart:io';

void main() {
  print("While: ============");
  // int i = 1;

  // while (i <= 5) {
  //   print(i);
  //   i++;
  // }

  print("Do: ===============");

  String username = 'verdipratama';
  bool notValid = false;

  do {
    stdout.write("Masukan nama Anda (min. 6 karakter): ");
    username = stdin.readLineSync() ?? "";

    if (username.length < 6) {
      notValid = true;
      print("Username anda tidak valid");
    } else {
      notValid = false;
      print("Berhasil");
    }
  } while (notValid);
}
