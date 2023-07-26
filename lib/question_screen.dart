import 'package:flutter/material.dart';
import 'package:quizz_app/answer_button.dart';
import 'data/questions.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  @override
  Widget build(BuildContext context) {
    final currentquestion = questions[0];
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
            style: const TextStyle(
                fontSize: 15, fontWeight: FontWeight.bold, color: Colors.white),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 30,
          ),
          //map is just creationg a new object in this case list with new item based on old ones
          ...currentquestion.answers.map(
            (item) {
              return AnswerButton(answerText: item, onTap: () {});
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
