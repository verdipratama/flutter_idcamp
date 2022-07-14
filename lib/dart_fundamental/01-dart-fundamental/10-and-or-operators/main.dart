void main() {
  bool isSmart = true;
  bool isStudent = false;

  // And Operator
  // Jika kedua BERBEDA maka tidak akan muncul
  if (isSmart & isStudent) {
    print("You will get the job!");
  } else if (isSmart & !isStudent) {
    print("You are smart but not a student!");
  } else if (!isSmart & !isStudent) {
    print("You are not smart and not a student!");
  }

  // OR operator
  // Jika berbeda atau sama maka tetap akan muncul
  if (isSmart | isStudent) print("You will get the job!");
}
