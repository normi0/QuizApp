import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quizz_app/data/questions.dart';
import 'package:quizz_app/questions_summary.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen(
      {/* required this.restartQuiz, */ super.key,
      required this.choosenAnswers});
  /* final void Function() restartQuiz; */

  final List<String> choosenAnswers;
  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < choosenAnswers.length; i++) {
      summary.add({
        'Question_index': i,
        'Question': questions[i].text,
        'Correct_Answer': questions[i].answers[0],
        'User_Answer': choosenAnswers[i],
      });
    }

    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final summaryData = getSummaryData();
    final numOfTotalQuestions = questions.length;
    final numCorrectQuestions = summaryData.where((data) {
      return data['User_Answer'] == data['Correct_Answer'];
    }).length;
    return Center(
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'U answers $numCorrectQuestions out of $numOfTotalQuestions questions correctly!',
              style: GoogleFonts.lato(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            const SizedBox(
              height: 20,
            ),
            QuestionsSummary(getSummaryData()),
            const SizedBox(
              height: 30,
            ),
            TextButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.replay_outlined),
              label: const Text('Restart Quiz!'),
            )
          ],
        ),
      ),
    );
  }
}
