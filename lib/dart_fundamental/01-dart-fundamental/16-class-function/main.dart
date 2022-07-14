class Student {
  String? name;
  double? gpa;

  Student(String name, double gpa) {
    this.name = name;
    this.gpa = gpa;
  }

  bool hasHonors(double ubahDong) {
    return this.gpa! >= ubahDong;
  }
}

void main() {
  Student joe = new Student('Joe', 4.5);
  Student amr = new Student("Amr", 3.0);

  print(joe.name);
  print(joe.gpa);
  print(joe.hasHonors(4.0));
  print(amr.hasHonors(4.0));
}
