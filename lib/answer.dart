import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String answerText;
  final VoidCallback selectHandler;
  final Color color;
  const Answer(this.answerText, this.selectHandler, this.color, {super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        minimumSize: MaterialStateProperty.all(const Size(220, 40)),
        backgroundColor: MaterialStateProperty.all(color),
      ),
      onPressed: selectHandler,
      child: Text(answerText),
    );
  }
}
