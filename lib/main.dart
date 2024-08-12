import 'package:dart_quiz/gradient_container.dart';
import 'package:flutter/material.dart';

void main() {
  const color1 = Colors.purple;
  const color2 = Colors.deepPurpleAccent;

  runApp(const MaterialApp(
    home: Scaffold(
      body: GradientContainer(color1: color1, color2: color2),
    ),
  ));
}
