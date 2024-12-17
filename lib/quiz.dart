import 'package:flutter/material.dart';
import 'package:flutter_application_quiz_app/data/queations.dart';
import 'package:flutter_application_quiz_app/queastions_screen.dart';
//import 'package:flutter_application_quiz_app/screen_style.dart';
import 'package:flutter_application_quiz_app/start_screen.dart';
import 'package:flutter_application_quiz_app/results_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  List<String> selectedAnswers = [];
  var activeScreen = 'start-screen';

  void switchScreen() {
    setState(() {
      activeScreen = 'queastions-screen';
    });
  }

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);

    if (selectedAnswers.length == queastions.length) {
      setState(() {
        activeScreen = 'results-screen';
      });
    }
  }

  @override
  Widget build(context) {
    const startAlignment = Alignment.topRight;
    const endAlignment = Alignment.bottomLeft;
    Widget screenWidget = StartScreen(startQuiz: switchScreen);

    if (activeScreen == 'queastions-screen') {
      screenWidget = QuestionsScreen(
        onSelectedAnswer: chooseAnswer,
      );
    }

    if (activeScreen == 'results-screen') {
      screenWidget = ResultsScreen(
        chosenAnswers: selectedAnswers,
        restartQuiz: () {
          setState(() {
            selectedAnswers = [];
            activeScreen = 'start-screen';
          });
        },
      );
    }

    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 0, 89, 222),
                Color.fromARGB(255, 111, 130, 207)
              ],
              begin: startAlignment,
              end: endAlignment,
            ),
          ),
          child: screenWidget,
        ),
      ),
    );
  }
}
