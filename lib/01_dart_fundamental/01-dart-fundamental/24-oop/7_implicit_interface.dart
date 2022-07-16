class Vehicle {
  String type = 'Vehicle';
  String printDetails() => 'Type of vehicle: $type';
  // String printDetails() {
  //   return 'Type of vehicle: $type';
  // }
}

// Keyword atau anotasi @override menunjukkan fungsi tersebut mengesampingkan fungsi yang ada di interface atau kelas induknya, lalu menggunakan fungsi yang ada dalam kelas itu sendiri sebagai gantinya/
class Audi implements Vehicle {
  @override
  String type = 'Car';

  @override
  String printDetails() {
    return 'Type of vehicle: $type';
  }
}

void main() {
  var audi = Audi();
  var vehicle = Vehicle();

  print(audi.printDetails()); // Type of vehicle: Car
  print(vehicle.printDetails()); // Type of vehicle: Vehicle
}
