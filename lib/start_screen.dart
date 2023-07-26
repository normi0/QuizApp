import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          /* Opacity(
            opacity: 0.6,
            child: Image.asset(
              'assets/images/FeedBack.png',
            ),
          ), */
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,
            color: const Color.fromARGB(157, 222, 201, 226),
          ),
          const SizedBox(
            height: 80,
          ),
          Text('Quiz About Flutter',
              style: GoogleFonts.lato(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: const Color.fromARGB(255, 184, 137, 216))),
          const SizedBox(
            height: 20,
          ),
          OutlinedButton.icon(
              icon: const Icon(Icons.arrow_right_alt),
              onPressed: startQuiz,
              style: OutlinedButton.styleFrom(
                foregroundColor: Colors.white,
              ),
              label: const Text(
                'Start Quiz',
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
              ))
        ],
      ),
    );
  }
}
