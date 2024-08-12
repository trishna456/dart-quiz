import 'package:dart_quiz/start_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromARGB(255, 49, 18, 101),
                  Color.fromARGB(255, 58, 17, 129)
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            child:
                const StartScreen()), //const used at class instantiation (allows Dart to reuse the object)
      ),
    ),
  );
}
