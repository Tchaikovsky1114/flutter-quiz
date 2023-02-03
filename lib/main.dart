import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

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
  void _answerQuestion(type) {
    setState(() {
      if (_questionIndex >= 2) return;
      _questionIndex = _questionIndex + 1;
    });
    print('this type is $type');
    print(_questionIndex);
  }

  final _question = [
    {
      'questionText': 'What is your favorite Color?',
      'answers': ['Red', 'Green', 'White', 'Yellow']
    },
    {
      'questionText': 'What is your favorite Animal?',
      'answers': ['Tiger', 'Rabbit', 'Dog', 'Cat', 'Lion']
    },
    {
      'questionText': 'What application do you use the most?',
      'answers': ['Youtube', 'KakaoTalk', 'Coupang', 'Netflix', 'Etc']
    }
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text(
              'Flutter Fun',
            ),
          ),
          body: Column(
            children: [
              Question(_question[_questionIndex]['questionText'] as String),
              ...(_question[_questionIndex]['answers'] as List<String>)
                  .map((answer) {
                return Answer(answer, () => _answerQuestion(answer),
                    Colors.blue.shade400);
              }).toList()
            ],
          )),
    );
  }
}
