// Map sebuah collection yang dapat menyimpan data dengan format key-value.
void main() {
  var capital = {
    'jakarta': 'indonesia',
    'london': 'inggris',
    'moscow': 'russia',
    'tokyo': 'japan',
  };

  print(capital['jakarta']);
  print(capital.keys);
  print(capital.values);

  capital['new delhi'] = 'india';
  capital.addAll({
    'tes1': 'tes1',
    'tes2': 'tes2',
    'tes3': 'tes3',
  });

  //capital.addEntries();
  print(capital);
}
