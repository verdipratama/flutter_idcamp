// class = blueprint untuk membuat instance dari object
// class mendefinisikan object
// class bisa menyimpan data dan perilaku / property & method
// object = intance yang didefinisakn oleh class
// Class
class Book {
  // Field
  String? title;
  String? author;
  int? numPages;

  // Constructor
  // constructor adalah metode khusus yang akan jalankan setiap kita membuat instance dari sebuah class
  // construct akan menerima property yg ada di dalam class
  // KESIMPULANNYA method contruct akan otomatias dijalankan setiap instansiasi class (new produck baru)
  // panggil dengan $this dan isi dengan parameter di construct
  // samain namanya tidak masalah
  Book(String aTitle, String aAuthor, int aNumpage) {
    this.title = aTitle;
    this.author = aAuthor;
    this.numPages = aNumpage;
  }
}

void main() {
  // Calling Object
  // Call semua argument pada constructor
  Book b1 = new Book('Bokep', 'Ferdi', 245);

  // Panggil propertynya
  print(b1.title);
  print(b1.author);
  print(b1.numPages);
}
