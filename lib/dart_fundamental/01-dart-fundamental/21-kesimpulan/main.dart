void main() {
  try {
    var stock = 0;
    var milkNeeded = 25;
    // Jika stock lebih besar dari kebutuhan
    if (stock > milkNeeded) {
      // STOK dikurang kebutuhan
      stock = stock - milkNeeded;
      print('Processing your order...');
    } else {
      throw 'Out of Stock!';
    }
  } catch (e) {
    print(e);
  } finally {
    print('Thank you');
  }

  // ignore: dead_code
  if (true || (false && true)) {
    print("It's true");
    // ignore: dead_code
  } else {
    print("It's false");
  }
}
