import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(
      {super.key}); //StatelessWidget accepts + also forwards "key" (to the Widget class)
  //const in front of the constructor function: "Unlocks" the usage of const when instantiating the class

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,
          ),
          const SizedBox(
            height: 80,
          ),
          const Text(
            'Learn Flutter the fun way!',
            style: TextStyle(
              color: Color.fromARGB(255, 178, 115, 241),
              fontSize: 24,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          OutlinedButton.icon(
            //an alternative constructor function offered by Flutter on this widget
            //this adds an icon to the button
            //instead of child use the label argument
            onPressed: () {},
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
            ),
            icon: const Icon(Icons.arrow_right_alt),
            label: const Text("Start Quiz"),
          ),
        ],
      ),
    );
  }
}
