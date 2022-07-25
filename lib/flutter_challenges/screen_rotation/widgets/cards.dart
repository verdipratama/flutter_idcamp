import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final String cardText;

  const CustomCard({Key? key, required this.cardText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Center(
        child: Text(cardText),
      ),
    );
  }
}
