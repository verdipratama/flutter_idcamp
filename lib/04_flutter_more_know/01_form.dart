/**
 * * Flutter Tutorials: Forms Widgets
 *
 * ! @author Verdi Pratama <hello@verside.com>
 * ! @link https://github.com/verdipratama/flutter_idcamp/
 * ! @licence MIT
 */

import 'package:flutter/material.dart';

// ? Cara I
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final _formKey = GlobalKey<FormState>();

  String _name = '';
  bool _nilaiCheckBox = false;
  bool _nilaiSwitch = true;
  double _nilaiSlider = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('IDCamp: Form'),
      ),
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                // ? 1. TextField()
                TextField(
                  decoration: const InputDecoration(
                    hintText: 'ex: Verside Music',
                    labelText: 'Fullname',
                  ),
                  onChanged: (String value) {
                    setState(() {
                      _name = value;
                    });
                  },
                ),
                // ? TextFormField() [USERNAME]
                const SizedBox(height: 20.0),
                TextFormField(
                  // autofocus: true,
                  decoration: InputDecoration(
                    hintText: "ex: verside",
                    labelText: "username",
                    icon: const Icon(Icons.people),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Username tidak boleh kosong';
                    }
                    return null;
                  },
                ),
                // ? TextFormField() [PASSWORD]
                const SizedBox(height: 20.0),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: "Password",
                    icon: const Icon(Icons.security),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Password tidak boleh kosong';
                    }
                    return null;
                  },
                ),
                // ? TextFormField() [PHONE NUMBER]
                const SizedBox(height: 20.0),
                TextFormField(
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    hintText: 'ex: 087xxxxxxx',
                    labelText: "Phone Number",
                    icon: const Icon(Icons.phone),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Tlp tidak boleh kosong';
                    }
                    return null;
                  },
                ),
                // ? CheckBoxListTitle()
                const SizedBox(height: 20.0),
                CheckboxListTile(
                  title: const Text('Belajar Flutter'),
                  subtitle: const Text('Dart, Widget, Http'),
                  value: _nilaiCheckBox,
                  onChanged: ((value) {
                    setState(() {
                      _nilaiCheckBox = value!;
                    });
                  }),
                ),
                // ? SwithListTile();
                const SizedBox(height: 20.0),
                SwitchListTile(
                  title: const Text('Frontend Programming'),
                  subtitle: const Text('Dart, React, Nodejs'),
                  value: _nilaiSwitch,
                  onChanged: ((value) {
                    setState(() {
                      _nilaiSwitch = value;
                    });
                  }),
                ),
                // ? Slider()
                Slider(
                  value: _nilaiSlider,
                  min: 0,
                  max: 100,
                  onChanged: (value) {
                    setState(() {
                      _nilaiSlider = value;
                    });
                  },
                ),
                // ? ELEVATEDBUTTON() [BUTTON]
                const SizedBox(height: 20.0),
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            content: Text('Hello $_name'),
                          );
                        },
                      );
                    }
                  },
                  child: const Text('Submit'),
                ),
                const SizedBox(height: 20.0),
                const Text(
                  'HASILNYA:',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  _name,
                  style: const TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class HomeCntrl extends StatefulWidget {
  const HomeCntrl({Key? key}) : super(key: key);

  @override
  State<HomeCntrl> createState() => _HomeCntrlState();
}

// ? Cara II
// ? Menggunakan TextEditingController();
class _HomeCntrlState extends State<HomeCntrl> {
  final TextEditingController _controller = TextEditingController();

  String _name = '';
  bool _lightOn = false;
  String? _language;
  int? _value = 0;

  void showSnackBar() {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text('$_language selected'),
      duration: const Duration(seconds: 1),
    ));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('IDCamp: Form V2'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: _controller,
              decoration: const InputDecoration(
                hintText: "Write your name here",
                labelText: "Your name",
              ),
              onChanged: (value) {
                setState(() {
                  _name = value;
                });
              },
            ),
            const SizedBox(height: 20.0),
            Switch(
              value: _lightOn,
              onChanged: (value) {
                setState(() {
                  _lightOn = value;
                });
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(_lightOn ? 'Light ON' : 'Light OFF'),
                    duration: const Duration(seconds: 1),
                  ),
                );
              },
            ),
            const SizedBox(height: 20.0),
            Container(
              height: 60.0,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5.0),
                border: Border.all(color: const Color(0xff263238), width: 0.1),
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 15,
                  right: 15,
                  left: 15,
                  bottom: 15,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Dart',
                      style: TextStyle(
                        fontSize: 14.0,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                    Radio(
                      value: 1,
                      groupValue: _value,
                      onChanged: ((value) {
                        setState(() {
                          _value = value as int?;
                          showSnackBar();
                        });
                      }),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 10.0),
            Container(
              height: 60.0,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5.0),
                border: Border.all(color: const Color(0xff263238), width: 0.1),
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 15,
                  right: 15,
                  left: 15,
                  bottom: 15,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Kotlin',
                      style: TextStyle(
                        fontSize: 14.0,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                    Radio(
                      value: 2,
                      groupValue: _value,
                      onChanged: ((value) {
                        setState(() {
                          _value = value as int?;
                          showSnackBar();
                        });
                      }),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 10.0),
            Container(
              height: 60.0,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5.0),
                border: Border.all(color: const Color(0xff263238), width: 0.1),
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 15,
                  right: 15,
                  left: 15,
                  bottom: 15,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'React.js',
                      style: TextStyle(
                        fontSize: 14.0,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                    Radio(
                      value: 3,
                      groupValue: _value,
                      onChanged: ((value) {
                        setState(() {
                          _value = value as int?;
                          showSnackBar();
                        });
                      }),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: ((context) {
                    return AlertDialog(
                      content: Text('Hello ${_controller.text}'),
                    );
                  }),
                );
              },
              child: const Text('Submit'),
            ),
            const SizedBox(height: 20.0),
            Text(_name, style: const TextStyle(fontSize: 30.0)),
          ],
        ),
      ),
    );
  }
}
