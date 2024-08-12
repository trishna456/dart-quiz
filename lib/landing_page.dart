import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/quiz-logo.png',
          width: 200,
        ),
        const SizedBox(
          height: 20,
        ),
        const Text(
          "Learn Flutter the Fun Way!",
          style: TextStyle(fontSize: 28, color: Colors.white),
        ),
        const SizedBox(
          height: 20,
        ),
        TextButton(
          onPressed: () {},
          style: OutlinedButton.styleFrom(
            foregroundColor: Colors.white,
          ),
          child: const Text('Start Quiz'),
        )
      ],
    );
  }
}
