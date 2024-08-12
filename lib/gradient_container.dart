import 'package:dart_quiz/landing_page.dart';
import 'package:flutter/material.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer(
      {super.key, required this.color1, required this.color2});

  final Color color1;
  final Color color2;

  @override
  Widget build(context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 85, 4, 99),
            Color.fromARGB(255, 49, 22, 125)
          ],
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: const Center(child: LandingPage()),
    );
  }
}
