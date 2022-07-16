void main() {
  final now = DateTime.now();

  switch (now.weekday) {
    // bisa menggunakan string/int
    case 0:
      print("Ini hari: Minggu");
      break;
    case 1:
      print("Ini hari: Senin");
      break;
    case 2:
      print("Ini hari: Selasa");
      break;
    case 3:
      print("Ini hari: Rabu");
      break;
    case 4:
      print("Ini hari: Kamis");
      break;
    case 5:
      print("Ini hari: Jumat");
      break;
    case 6:
      print("Ini hari: Sabtu");
      break;
    default:
      print("Invalid Day!");
  }

  print("Waktu: ${now.hour}:${now.minute}:${now.second}");
  print("Tahun: ${now.year}");
}
