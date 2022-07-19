/**
 * * Flutter Tutorials: Forms Widgets
 *
 * ! @author Verdi Pratama <hello@verside.com>
 * ! @link https://github.com/verdipratama/flutter_idcamp/
 * ! @licence MIT
 */

import 'package:flutter/material.dart';

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
