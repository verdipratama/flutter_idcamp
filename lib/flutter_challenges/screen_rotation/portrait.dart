import 'package:flutter/material.dart';
import 'package:flutter_idcamp/flutter_challenges/screen_rotation/widgets/cards.dart';

class HomePortrait extends StatelessWidget {
  const HomePortrait({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: const [
              Expanded(child: CustomCard(cardText: 'CARD 1')),
              Expanded(child: CustomCard(cardText: 'CARD 2')),
            ],
          ),
        ),
        Expanded(
          child: Container(
            color: Colors.amberAccent,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text('CENTER CARD'),
                  Text('Ini adalah card ditengah!'),
                ],
              ),
            ),
          ),
        ),
        Expanded(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: const [
              Expanded(child: CustomCard(cardText: 'CARD 3')),
              Expanded(child: CustomCard(cardText: 'CARD 4')),
            ],
          ),
        ),
      ],
    );
  }
}
