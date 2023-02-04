import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final String text;
  final int resultScore;
  final VoidCallback _resetScoreHandler;

  const Result(this.text, this.resultScore, this._resetScoreHandler);

  String get resultPhrase {
    var resultText = '';
    if (resultScore <= 8) {
      resultText = '$resultScore점! 정상입니다!';
    } else if (resultScore <= 12) {
      resultText = '$resultScore점! 주의가 필요합니다!';
    } else if (resultScore > 12) {
      resultText = '$resultScore점..';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text(
            text,
            style: const TextStyle(fontSize: 36, fontWeight: FontWeight.w600),
          ),
        ),
        Center(
          child: Text(
            resultPhrase,
            style: const TextStyle(
              fontSize: 24,
            ),
          ),
        ),
        const SizedBox(
          width: 100,
          height: 40,
        ),
        Center(
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.amber,
                  backgroundColor: Colors.blue.shade900),
              onPressed: _resetScoreHandler,
              child: const Text(
                '다시 시작하기',
              )),
        ),
        TextButton(
          style: TextButton.styleFrom(
            backgroundColor: Colors.amber,
            foregroundColor: Colors.blue.shade900,
          ),
          onPressed: () {},
          child: const Text(
            'hi',
          ),
        ),
        OutlinedButton(
            style: OutlinedButton.styleFrom(
                side: BorderSide(
              color: Colors.red.shade600,
              width: 3,
            )),
            onPressed: () {},
            child: const Text(
              'good bye',
            ))
      ],
    );
  }
}
