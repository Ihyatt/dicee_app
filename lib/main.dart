import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(body: GradientContainer()),
    ),
  );
}

class GradientContainer extends StatelessWidget {
  //GradientContainer is inheriting from StatelessWidget

  @override //annotation to make it clear that you are overriding build from StatelessWidget
  Widget build(context) {
    return Container(
      // backgroundColor: Color.fromARGB(255, 168, 109, 97),
      decoration: const BoxDecoration(
          gradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
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
        child: Text(
          'Warm Enough',
          style: TextStyle(
            color: Colors.white,
            fontSize: 28,
          ),
        ),
      ),
    );
  } //build must return widget
}
