import 'package:flutter/material.dart';
import 'package:quizz_app/data/questions.dart';
import 'start_screen.dart';
import 'question_screen.dart';
import 'package:quizz_app/result_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  /* Widget? activeScreen; */ //init state method
  List<String> selectedAnswers = [];
  var activeScreen = 'start-screen'; //id method

  /*  void initState() {
    activeScreen = StartScreen(switchScreen);
    super.initState();
  } */

  void switchScreen() {
    setState(() {
      activeScreen = "questions-screen";
    });
  }

  void chooseanswers(String answer) {
    selectedAnswers.add(answer);
    if (questions.length == selectedAnswers.length) {
      setState(() {
        /* selectedAnswers = []; */
        activeScreen = 'results-screen';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    Widget screenWidget = StartScreen(switchScreen);
    if (activeScreen == 'questions-screen') {
      screenWidget = QuestionsScreen(
        onSelectAnswer: chooseanswers,
      );
    } else if (activeScreen == 'results-screen') {
      screenWidget = ResultsScreen(
        choosenAnswers: selectedAnswers,
      );
    }
    /* else if (activeScreen == 'Home-screnn')
    {
      screenWidget = '';
    } */
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromARGB(255, 62, 31, 121),
                  Color.fromARGB(255, 58, 18, 90)
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            child: screenWidget,
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
