import 'package:dart_quiz/data/questions.dart';
import 'package:dart_quiz/questions_screen.dart';
import 'package:dart_quiz/results_screen.dart';
import 'package:dart_quiz/start_screen.dart';
import 'package:flutter/material.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  //class variable
  var activeScreen = 'start-screen'; //option 1
  List<String> selectedAnswers = [];
  //we are not going to reassign the variable but only manipulate the values in memory

  /*
  Widget? activeScreen; //option 2

  @override
  void initState() {
    //used to do some extra initialization work when the state object is created for the first time.
    //initState is called immediately after the object is created and then never executes again.
    activeScreen = StartScreen(switchScreen);
    super.initState();
  }
  */

  /*
  Widget activeScreen = StartScreen(switchScreen);
  too early to reference this method, not guarunteed that it exists yet
  both the variable and method creation happens at the same point of time (simultaneously) -> when the class is instantiated

  void switchScreen() {
    setState(() {
      activeScreen = const QuestionsScreen();
    });
  }
  */

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);

    if (selectedAnswers.length == questions.length) {
      setState(() {
        activeScreen = 'results-screen';
      });
    }
  }

  void switchScreen() {
    setState(() {
      debugPrint('switching to questions screen');
      //activeScreen = const QuestionsScreen();
      activeScreen = 'questions-screen';
    });
  }

  @override
  Widget build(context) {
    //option 3 - use if else statements for conditional rendering

    return MaterialApp(
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

          //child: activeScreen,

          child: activeScreen == 'start-screen'
              ? StartScreen(switchScreen)
              : (activeScreen == 'questions-screen'
                  ? QuestionsScreen(onSelectAnswer: chooseAnswer)
                  : ResultsScreen(chosenAnswers: selectedAnswers)),

          /*
          child: const StartScreen(),
          const used at class instantiation (allows Dart to reuse the object)
          */
        ),
      ),
    );
  }
}
