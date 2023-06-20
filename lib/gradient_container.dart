import 'package:flutter/material.dart';
import 'package:dicee_app/styled_text.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  //GradientContainer is inheriting from StatelessWidget

  const GradientContainer(
      {required this.gradientColors,
      super.key}); //takes in named argument key and forward it to superclass

  final List<Color> gradientColors;

  void rollDice() {}

  @override //annotation to make it clear that you are overriding build from StatelessWidget
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: startAlignment,
          end: endAlignment,
          colors: gradientColors,
        ),
      ),
      child: Center(
        child: Column(
          children: [
            Image.asset(
              'assets/images/dice-1.png',
              width: 200,
            ),
            TextButton(
              onPressed: rollDice,
              child: const StyledText('Roll Me Baby!'),
            ),
          ],
        ),
      ),
    );
  } //build must return widget
}
