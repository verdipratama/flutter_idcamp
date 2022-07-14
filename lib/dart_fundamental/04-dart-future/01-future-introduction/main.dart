void main() {
  getOrder().then((value) {
    print("your order $value");
  }).catchError((error) {
    print("Sorry, $error");
  }).whenComplete(() {
    print("Thank you..");
  });

  print("Wait a sec .. I'm getting your order..");
}

Future<String> getOrder() {
  return Future.delayed(Duration(seconds: 5), () {
    var isStockAvailable = false;
    // ignore: dead_code
    if (isStockAvailable) {
      return 'DONE!!!';
    } else {
      throw 'OUT OFF STOCK!';
    }
  });
}
