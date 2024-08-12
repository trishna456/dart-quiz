import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz,
      {super.key}); //StatelessWidget accepts + also forwards "key" (to the Widget class)
  //const in front of the constructor function: "Unlocks" the usage of const when instantiating the class

  final void Function() startQuiz;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          //behind the scenes this is quite performance intensive
          // Opacity(
          //   opacity: 0.1,
          //   child: Image.asset(
          //     'assets/images/quiz-logo.png',
          //     width: 300,
          //   ),
          // ),
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,
            color: const Color.fromARGB(150, 255, 255, 255),
          ),
          const SizedBox(
            height: 80,
          ),
          Text(
            'Learn Flutter the fun way!',
            /*
            style: TextStyle(
              color: Color.fromARGB(255, 178, 115, 241),
              fontSize: 24,
            ),
            */
            style: GoogleFonts.lato(
              color: const Color.fromARGB(255, 193, 157, 230),
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
            onPressed: startQuiz,
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
