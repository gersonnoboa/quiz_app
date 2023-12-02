import 'package:flutter/material.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary({super.key, required this.summaryData});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: summaryData.map((summary) {
        final questionIndex = summary['question_index'] as int;
        final readableIndex = questionIndex + 1;
        final readableIndexString = readableIndex.toString();

        final question = summary['question'] as String;
        final correctAnswer = summary['correct_answer'] as String;
        final userAnswer = summary['user_answer'] as String;

        return Row(
          children: [
            Text(readableIndexString),
            Expanded(
              child: Column(
                children: [
                  Text(question),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(userAnswer),
                  Text(correctAnswer),
                ],
              ),
            )
          ],
        );
      }).toList(),
    );
  }
}
