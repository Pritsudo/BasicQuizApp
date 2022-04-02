import 'package:flutter/material.dart';
import 'package:quizapp/quiz.dart';
import 'package:quizapp/result.dart';
import 'question.dart';
import 'answer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _index = 0;
  int _totalScore = 0;
  void _answer(int score) {
    _totalScore += score;
    setState(() {
      _index = _index + 1;
    });
  }

  void reset() {
    setState(() {
    _index = 0;
    _totalScore = 0; 
    }); 
  }

  final _question = const [
    {
      'ques': 'This is Question 1',
      'ans': [
        {'text': 'Prit', 'score': 10},
        {'text': 'Hello', 'score': 5},
        {'text': 'bye', 'score': 2},
      ],
    },
    {
      'ques': 'This is Question 2',
      'ans': [
        {'text': 'Pr', 'score': 10},
        {'text': 'Hel', 'score': 5},
        {'text': 'by', 'score': 2},
      ],
    },
    {
      'ques': 'This is Question 3',
      'ans': [
        {'text': 'P', 'score': 10},
        {'text': 'H', 'score': 5},
        {'text': 'b', 'score': 2},
      ],
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("Quiz App"),
          ),
          body: _index < _question.length
              ? Quiz(answer: _answer, index: _index, question: _question)
              : Result(_totalScore ,reset)),
    );
  }
}
