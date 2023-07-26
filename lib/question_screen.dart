import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quizz_app/answer_button.dart';
import 'data/questions.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  var currentQuestionIndex = 0;

  answerQuestions() {
    setState(() {
      currentQuestionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentquestion = questions[currentQuestionIndex];
    return Center(
        child: Container(
      margin: const EdgeInsets.all(40),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          /* OutlinedButton.icon(
            onPressed: () {},
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
            label: const Text(
              'Back To Home Screen',
              style: TextStyle(
                  fontSize: 12, fontWeight: FontWeight.bold, color: Colors.white),
            ),
          ),
          const SizedBox(
            height: 28,
          ),
          const Text(
            'Questions Screen',
            style: TextStyle(
                fontSize: 28, fontWeight: FontWeight.bold, color: Colors.white),
          ), */
          Text(
            currentquestion.text,
            style: GoogleFonts.lato(
                color: const Color.fromARGB(255, 216, 198, 236),
                fontSize: 24,
                fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 30,
          ),
          //map is just creationg a new object in this case list with new item based on old ones
          ...currentquestion.getshuffledAnswers().map(
            (item) {
              return AnswerButton(answerText: item, onTap: answerQuestions);
            },
          ),

          /* AnswerButton(answerText: currentquestion.answers[0], onTap: () {}),
          AnswerButton(answerText: currentquestion.answers[1], onTap: () {}),
          AnswerButton(answerText: currentquestion.answers[2], onTap: () {}),
          AnswerButton(answerText: currentquestion.answers[3], onTap: () {}),
          AnswerButton(answerText: currentquestion.answers[4], onTap: () {}),
           */
        ],
      ),
    ));
  }
}
