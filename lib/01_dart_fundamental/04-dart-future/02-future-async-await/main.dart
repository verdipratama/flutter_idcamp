void main() async {
  print("Getting your order...");

  try {
    var order = await getOrder();
    print('Your order: $order');
  } catch (e) {
    print("Sorry, $e");
  } finally {
    print("Thank you for your order!");
  }
}

Future<String> getOrder() {
  return Future.delayed(const Duration(seconds: 5), () {
    var isStockAvailable = true;
    if (isStockAvailable) {
      return 'DONE!!!';
      // ignore: dead_code
    } else {
      throw 'OUT OFF STOCK!';
    }
  });
}
