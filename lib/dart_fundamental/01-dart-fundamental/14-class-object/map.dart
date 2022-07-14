void main() {
  var details = {
    'username': 'tom',
    'password': '123',
  };

  details['email'] = 'admin@gmail.com';
  print(details);

  print("=============================");

  var test = new Map();

  test['bio'] = 'lorem';
  test['address'] = 'JAJA';

  test.addAll({
    'masuk': 'yes',
  });

  test.forEach((k, v) => {
        // new
        print("Key is: ${k} || Value is: ${v}")
      });

  print(test);
  print(test['bio']);
}
