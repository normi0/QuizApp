import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startFeedBack, {super.key});

  final void Function() startFeedBack;

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
          const Text(
            'Give Us Your FeedBack',
            style: TextStyle(
                color: Color.fromARGB(255, 204, 169, 233),
                fontSize: 28,
                fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 20,
          ),
          OutlinedButton.icon(
              icon: const Icon(Icons.arrow_right),
              onPressed: startFeedBack,
              style: OutlinedButton.styleFrom(
                foregroundColor: Colors.white,
              ),
              label: const Text(
                'Start FeedBack',
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
              ))
        ],
      ),
    );
  }
}
