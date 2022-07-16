// Dart tidak menyediakan array, namun sebaliknya dart memiliki list yang kurang lebih semua sama disediakan oleh array.

void main() {
  List<String> favName = ['Joe', 'Ronny', 'Ferdi'];
  // bisa mengganti Ferdi
  // favName[2] = 'Ganti';
  // favName.add("Tambah");
  // favName.remove("Tambah");

  List<int> favNum = [1, 2, 3, 4];

  print(favName); // [Joe, Ronny, Ferdi]
  print(favName[0]); // Joe
  print(favName[1][0]); // R
  print(favName[2].length); // 5

  print(favName.last); // Ferdi
  print(favName.length); // 3
  print(favName.first); // Joe
  print(favName.isEmpty); // to check whether the array is empty or not
  print(favName.indexOf('Ferdi')); // 2 , jika tidak ada akan menampilkan -1
  print(favName.contains(
      'Ngga ada cuy')); // false, akan menampilkan bolean true or false

  print("==================");

  print(favNum); // [1,2,3,4]
  print(favNum[0] + favNum[3]); // 5
  print(favNum.indexOf(4)); // 3
}
