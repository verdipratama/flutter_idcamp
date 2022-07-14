// Collections merupakan sebuah objek yang bisa menyimpan kumpulan objek lain.
// Contoh collections pada Dart antara lain List, Set, dan Map.

void main() {
  print("List is dart array: ");

  List<int> myNum = [1, 2, 3, 4, 5];
  List<String> myName = ['Andi', 'Joko', 'Ridwan'];

  List dynamicList = [1, 'Hello', true];
  List<dynamic> myArr = [1, 'Hello', true];

  print(myNum);
  print(myName);
  print(dynamicList);
  print(myArr);

  print("=============");

  // Menggunakan for
  for (int i = 0; i < myArr.length; i++) {
    print(myArr[i]);
  }

  // Menggunakan Anonymous function (lambda)
  myArr.forEach((element) => {print(element)}); // mengekstrak element

  myArr.add('Dart'); // Menambahkan
  myArr.insert(0, 'Firstly'); // Menambahkan menggunakan index
  //myArr[1] = ''; // Mengubah

  myArr.remove('Programming'); // Menghapus list dengan nilai Programming
  myArr.removeAt(1); // Menghapus list pada index ke-1
  myArr.removeLast(); // Menghapus data list terakhir
  myArr.removeRange(
      0, 2); // Menghapus index ke-0 sampai ke-1 (indeks 2 masih dipertahankan)
  myArr.shuffle(); // arrange element in random order/sequence
  myArr.sort(); // sort element in the list

  print(myArr);

  print("=================");
  print("SPREAD OPERATOR: ");

  List fav = ['Seafood', 'Salad', 'Nugget', 'Soup'];
  List others = ['Cake', 'Pie', 'Donut'];

  List all = [fav, others];
  print(all);

  List l1 = ['Seafood', 'Salad', 'Nugget', 'Soup'];
  List l2 = ['Cake', 'Pie', 'Donut'];

  List printAll = [...l1, ...l2];
  print(printAll);

  // Mengatasi list yang bisa bernilai null
  var lis;
  var lis2 = ['halo', ...?lis];
  List<dynamic> lis3 = [12, 'halo', ...?lis];

  print(lis2); // [halo]
  print(lis3);
}
