import 'package:flutter/material.dart';
import 'package:flutter_idcamp/flutter_challenges/route_generator/home.dart';
import 'package:flutter_idcamp/flutter_challenges/route_generator/about.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // Jika ingin mengirim argument
    // final args = settings.arguments;

    switch (settings.name) {
      case '/':
        return PageRouteBuilder(pageBuilder: (_, __, ___) => const Home());
      case '/about':
        return PageRouteBuilder(pageBuilder: (_, __, ___) => const About());
      // return PageRouteBuilder(pageBuilder: (_, __, ___) => const About(args));
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return PageRouteBuilder(
      barrierColor: Colors.red,
      pageBuilder: (_, __, ___) {
        return Scaffold(
          appBar: AppBar(title: const Text('Error')),
          body: const Center(child: Text('Error Page')),
        );
      },
    );
  }
}
