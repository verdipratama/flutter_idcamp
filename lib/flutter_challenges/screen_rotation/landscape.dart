import 'package:flutter/material.dart';
import 'package:flutter_idcamp/flutter_challenges/screen_rotation/widgets/cards.dart';

class HomeLandscape extends StatelessWidget {
  const HomeLandscape({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: const [
              Expanded(child: CustomCard(cardText: 'CARD 1')),
              Expanded(child: CustomCard(cardText: 'CARD 2')),
            ],
          ),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: const [
              Expanded(
                child: CustomCard(cardText: 'CARD 3'),
              ),
            ],
          ),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: const [
              Expanded(child: CustomCard(cardText: 'CARD 4')),
              Expanded(child: CustomCard(cardText: 'CARD 5')),
            ],
          ),
        ),
      ],
    );
  }
}
