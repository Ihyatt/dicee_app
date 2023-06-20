import 'package:flutter/material.dart';
import 'package:dicee_app/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          gradientColors: [
            Color.fromARGB(255, 168, 109, 97),
            Color.fromARGB(255, 223, 176, 166)
          ],
        ),
      ),
    ),
  );
}
