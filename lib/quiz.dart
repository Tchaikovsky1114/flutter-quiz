import 'package:flutter/material.dart';
import 'package:basicflutter/answer.dart';
import 'package:basicflutter/question.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> quiz;
  final int quizIndex;
  final Function answerQuestion;

  const Quiz(this.quiz, this.quizIndex, this.answerQuestion);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(quiz[quizIndex]['questionText'] as String),
        ...(quiz[quizIndex]['answers'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(
            answer['text'] as String,
            () => answerQuestion(answer['score']),
            Colors.blue.shade400,
          );
        }).toList()
      ],
    );
  }
}
