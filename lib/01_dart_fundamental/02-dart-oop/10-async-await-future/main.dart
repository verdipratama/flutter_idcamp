void main() async {
  // count(10);

  var p = Person();

  print("JOB 1");
  print("JOB 2");

  //p.getData();
  await p.getDataAsync();

  // kalo gak mau ditungguin
  // p.getDataAsync().then(((value) => {print("JOB 3: ${p.name}")}));
  print("JOB 3: ${p.name}");
  print("JOB 4");
}

class Person {
  String name = 'DEFAULT NAME';

  // Sync
  void getData() {
    name = 'JOE';
    print('DONE... ');
  }

  // Async
  Future<void> getDataAsync() async {
    print("LOADING...");
    await Future.delayed(Duration(seconds: 5));
    name = 'JOE'; // Misalnya: ambil dari database (3 detik)
    print("DONE!");
  }
}

void count(int s) {
  for (var i = 1; i <= s; i++) {
    Future.delayed(Duration(seconds: i), () => print(i));
  }
}
