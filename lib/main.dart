import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Container(
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
        ),
      ),
    ),
  );
}
