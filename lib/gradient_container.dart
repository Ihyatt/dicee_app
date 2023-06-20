import 'package:flutter/material.dart';
import 'package:dicee_app/dice_roller.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  //GradientContainer is inheriting from StatelessWidget

  const GradientContainer(
      {required this.gradientColors,
      super.key}); //takes in named argument key and forward it to superclass

  final List<Color> gradientColors;

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
      child: const Center(
        child: DiceRoller(),
      ),
    );
  } //build must return widget
}
