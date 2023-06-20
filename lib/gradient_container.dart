import 'package:flutter/material.dart';
import 'package:dicee_app/styled_text.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  //GradientContainer is inheriting from StatelessWidget

  const GradientContainer(
      {super.key}); //takes in named argument key and forward it to superclass

  @override //annotation to make it clear that you are overriding build from StatelessWidget
  Widget build(context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
        begin: startAlignment,
        end: endAlignment,
        colors: <Color>[
          Color.fromARGB(
            255,
            168,
            109,
            97,
          ),
          Color.fromARGB(
            255,
            223,
            176,
            166,
          ),
        ],
      )),
      child: const Center(
        child: StyledText('Warm Enough'),
      ),
    );
  } //build must return widget
}
