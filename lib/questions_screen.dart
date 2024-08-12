import 'package:dart_quiz/answer_button.dart';
import 'package:flutter/material.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  @override
  Widget build(context) {
    return SizedBox(
      width: double.infinity, //be as wide as possible
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'The question..',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          AnswerButton(
            answerText: 'Answer Text',
            onTap: () {},
          ),
          AnswerButton(
            answerText: 'Answer Text',
            onTap: () {},
          ),
          AnswerButton(
            answerText: 'Answer Text',
            onTap: () {},
          ),
          AnswerButton(
            answerText: 'Answer Text',
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
