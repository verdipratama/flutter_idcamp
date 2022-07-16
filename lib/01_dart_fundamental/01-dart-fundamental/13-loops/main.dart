void main() {
  print("===================================");
  print("For loops");

  for (var i = 0; i < 5; i++) {
    int result = i + 1;
    print("No. ${result} SEMANGAT");
  }

  print("===================================");
  print("While loops: if condition it's true");

  // if condition its true
  // while loops T/F
  int i = 0;
  while (i < 5) {
    print(i + 1);
    i++;
  }

  print("===================================");
  print("DO While loops: if condition it's NOT true");

  // DO WHILE
  // Mirip while tapi ada sedikit perbedaan (kebalikan dari while)
  int j = 0;
  do {
    print("HELLO");
    j++;
  } while (j < 5);
}
