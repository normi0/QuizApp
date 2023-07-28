import 'package:flutter/material.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});
  final List<Map<String, Object>> summaryData;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: summaryData.map(
        (data) {
          return const Row(
            children: [
              Text(
                data['Question'],
              ),
            ],
          );
        },
      ).toList(),
    );
  }
}
