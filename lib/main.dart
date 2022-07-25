import 'package:flutter/material.dart';
import 'package:flutter_idcamp/flutter_challenges/screen_rotation/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Tutorial: IDcamp',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const Home(),
      // ! ========================== //
      // ! Named Routing
      // ? Inisialisasi Named Routing (MaterialPageRoute)
      // initialRoute: '/',
      // routes: <String, WidgetBuilder>{
      //   '/': (context) => const Home(),
      //   '/about': (context) => const About(),
      // },
      // ! ========================== //
      // ! Named Route Generator (PageRouteBuilder)
      // onGenerateRoute: (settings) {
      //   if (settings.name == '/second')
      //     return PageRouteBuilder(
      //       pageBuilder: (_, __, ___) => SecondRoute(),
      //     );
      //   return null;
      // },
      // ! Custom Route Generator (PageRouteBuilder)
      // onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}
