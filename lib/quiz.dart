import 'package:dart_quiz/questions_screen.dart';
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
  var activeScreen2 = 'start-screen'; //option 1

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

  void switchScreen() {
    setState(() {
      debugPrint('switching to questions screen');
      //activeScreen = const QuestionsScreen();
      activeScreen2 = 'questions-screen';
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

          child: activeScreen2 == 'start-screen'
              ? StartScreen(switchScreen)
              : const QuestionsScreen(),

          /*
          child: const StartScreen(),
          const used at class instantiation (allows Dart to reuse the object)
          */
        ),
      ),
    );
  }
}
