void main() async {
  print("Your order being proses..");
  await delayedPrint(5, 'Done..').then((status) => {print(status)});
  print("Thank you!!");
}

Future delayedPrint(int s, String msg) {
  var duration = Duration(seconds: s);
  return Future.delayed(duration).then((value) => msg);
}
