import 'package:flutter/material.dart';
import 'dart:math';

final randomizer =
    Random(); // prevents from creating multiple instances by setting it outside of widget

class DiceRoller extends StatefulWidget {
  const DiceRoller(
      {super.key}); // const can be added because of the separation of DiceRoller and _DiceROller

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

//Flutter requires for these classes to be separated

class _DiceRollerState extends State<DiceRoller> {
  var currDiceRoll = 2;

  void rollDice() {
    setState(() {
      currDiceRoll = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$currDiceRoll.png',
          width: 200,
        ),
        const SizedBox(height: 20),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            foregroundColor: Colors.white,
            textStyle: const TextStyle(
              fontSize: 28,
            ),
          ),
          child: const Text('Roll Me Baby!'),
        ),
      ],
    );
  }
}
