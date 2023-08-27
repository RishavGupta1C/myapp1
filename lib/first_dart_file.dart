import 'package:flutter/material.dart';
import 'package:myapp1/gradient_constraint.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        // body: GradientContainer(colors: [
        //   Colors.redAccent,
        //   Colors.blueAccent,
        //   Color.fromARGB(255, 74, 44, 116),
        // ]),
        body: GradientContainer(
          Colors.redAccent,
          Colors.blueAccent,
          Color.fromARGB(255, 74, 44, 116),
        ),
        // body: GradientContainer.rgb(),
      ),
    ),
  );
}
