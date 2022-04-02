import 'package:flutter/material.dart';
import 'answer.dart';
import 'question.dart';

class Quiz extends StatelessWidget {
  // final  question;
  final List<Map<String, Object>> question;
  final int index;
  final Function answer;

  // const Quiz({Key? key}) : super(key: key);
  Quiz({required this.answer, required this.index, required this.question});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          question[index]['ques'] ,
        ),
        ...(question[index]['ans'] as List<Map<String , Object>>).map((answ) {
          return Answer( ()=>answer(answ['score']) , answ['text'] as String );
        }).toList()
      ],
    );
  }
}
