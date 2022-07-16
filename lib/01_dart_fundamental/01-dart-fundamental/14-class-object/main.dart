// class = blueprint untuk membuat instance dari object
// class mendefinisikan object
// class bisa menyimpan data dan perilaku / property & method
// object = intance yang didefinisakn oleh class
// Class
class Book {
  // field
  String? title;
  String? author;
  int? numPages;

  // function
  void getLabel() {
    print("Hello World");
    // this adalah instance bersangkutan
    this.author = author;
  }
}

void main() {
  // Object
  Book b1 = new Book();

  // instansiasi object!
  b1.title = 'Bokep';
  b1.author = 'Ferdi Pratama, S.Kom';
  b1.numPages = 123;

  Book b2 = new Book();

  b2.title = 'XASD';
  b2.author = 'Ferdi Pratama, S.Kom';
  b2.numPages = 999;

  // Panggil propertynya
  print(b1.title);
  print(b1.author);
  print(b1.numPages);

  print(b2.title);
  print(b2.author);
  print(b2.numPages);
}
