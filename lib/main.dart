import 'package:basicflutter/quiz.dart';
import 'package:basicflutter/result.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;
  final question = const [
    {
      'questionText': 'What is your favorite Color?',
      'answers': [
        {'text': 'Red', 'score': 5},
        {'text': 'Blue', 'score': 3},
        {'text': 'White', 'score': 8},
        {'text': 'Yellow', 'score': 2},
      ]
    },
    {
      'questionText': 'What is your favorite Animal?',
      'answers': [
        {'text': 'Tiger', 'score': 5},
        {'text': 'Rabbit', 'score': 8},
        {'text': 'Dog', 'score': 0},
        {'text': 'Cat', 'score': 3},
        {'text': 'Lion', 'score': 5},
      ]
    },
    {
      'questionText': 'What application do you use the most?',
      'answers': [
        {'text': 'Youtube', 'score': 3},
        {'text': 'KakaoTalk', 'score': 1},
        {'text': 'Coupang', 'score': 6},
        {'text': 'Netflix', 'score': 8},
        {'text': 'Etc', 'score': 10},
      ]
    }
  ];

  void _answerQuestion(int score) {
    // var aBool = true;
    setState(() {
      _questionIndex = _questionIndex + 1;
      _totalScore += score;
    });
  }

  void _resetScoreHandler() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Text(
          'Flutter Fun',
        ),
      ),
      body: _questionIndex < question.length
          ? Quiz(
              question,
              _questionIndex,
              _answerQuestion,
            )
          : Result(
              'Question Done',
              _totalScore,
              _resetScoreHandler,
            ),
    ));
  }
}
