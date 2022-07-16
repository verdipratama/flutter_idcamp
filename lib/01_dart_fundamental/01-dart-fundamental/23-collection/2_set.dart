// Set merupakan sebuah collection yang hanya dapat menyimpan nilai yang unik.
//Ini akan berguna ketika tidak ingin ada data yang sama alias duplikasi dalam sebuah collection.

void main() {
  Set<int> setNum = new Set.from([1, 1, 2, 3, 4, 4]);

  print(setNum); // {1, 2, 3, 4}

  // Untuk menambahkan data ke dalam Set kita dapat memanfaatkan fungsi add() atau addAll().
  setNum.add(6);
  setNum.addAll({7, 5, 9});
  setNum.remove(9);

  print(setNum); // {1, 2, 3, 4, 6, 7, 5}
  print(setNum.elementAt(0)); // 1

  // Dart juga memiliki Method union dan intersection untuk mengetahui gabungan dan irisan dari 2 (dua) buah Set.
  // berisi object
  var setA = {'A', 'B', 'C'};
  var setB = {'A', 'E', 'F'};

  var union = setA.union(setB);
  var intersection = setA.intersection(setB);

  print(union); // {A, B, C, E, F}
  print(intersection); // A
}
