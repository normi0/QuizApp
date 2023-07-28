import 'package:flutter/material.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});
  final List<Map<String, Object>> summaryData;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map(
            (data) {
              return Row(
                children: [
                  SizedBox(
                    width: 50,
                    height: 50,
                    child: Text(
                      ((data['Question_index'] as int) + 1).toString(),
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Text(data['Question'] as String),
                        const SizedBox(
                          height: 15,
                        ),
                        Text(data['User_Answer'] as String),
                        const SizedBox(
                          height: 15,
                        ),
                        Text(data['Correct_Answer'] as String),
                      ],
                    ),
                  ),
                ],
              );
            },
          ).toList(),
        ),
      ),
    );
  }
}
