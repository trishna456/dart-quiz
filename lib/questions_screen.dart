import 'package:dart_quiz/answer_button.dart';
import 'package:flutter/material.dart';
import 'package:dart_quiz/data/questions.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  var currentQuestionIndex = 0;

  void answerQuestion() {
    debugPrint('answer selected');
    setState(() {
      debugPrint('changing state');
      currentQuestionIndex++;
    });
  }

  @override
  Widget build(context) {
    debugPrint("inside questions screen");
    final currentQuestion = questions[currentQuestionIndex];

    return SizedBox(
      width: double.infinity, //be as wide as possible
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentQuestion.text,
              /*
               style: const TextStyle(
                color: Colors.white,
               ),
               */
              style: GoogleFonts.lato(
                color: const Color.fromARGB(255, 205, 141, 226),
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 30,
            ),
            ...currentQuestion.getShuffledAnswers().map((answer) {
              //map yeilds an iterable
              //this becomes a nested list then
              //so use the spread operation
              debugPrint('got answer $answer');
              return AnswerButton(
                answerText: answer,
                onTap: answerQuestion,
              );
            })
          ],
        ),
      ),
    );
  }
}
