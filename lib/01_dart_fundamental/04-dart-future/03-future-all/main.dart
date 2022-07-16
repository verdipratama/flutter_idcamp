void main() async {
  // Mengurutkan dari yang pertama dulu.
  // Future.wait([
  //   giveMe99(),
  //   giveMeA(),
  //   giveTF(),
  // ]).then((List<dynamic> allOfThem) {
  //   print(allOfThem);
  // });

  // Langsung di eksekusi yang tercepat!
  List<dynamic> allOfThem = await Future.wait([
    giveMe99()
        .then((value) => value)
        .catchError((onError) => onError)
        .whenComplete(() => print("Done int..")),
    giveMeA()
        .then((value) => value)
        .catchError((onError) => onError)
        .whenComplete(() => print("Done string..")),
    giveTF()
        .then((value) => value)
        .catchError((onError) => onError)
        .whenComplete(() => print("Done bool..")),
  ]);

  print(allOfThem);

  // var result = await Future.any([
  //   giveMe99(),
  //   giveMeA(),
  //   giveTF(),
  // ]);

  // print(result);
}

Future<int> giveMe99() async {
  return Future.delayed(Duration(seconds: 5), () {
    print("Finished giveMe int");
    return 99;
  });
}

Future<String> giveMeA() async {
  return Future.delayed(Duration(seconds: 3), () {
    print("Finished giveMe String");
    return "A";
  });
}

Future<bool> giveTF() async {
  return Future.delayed(Duration(seconds: 2), () {
    print("Finished giveMe Bool");
    return true;
  });
}
