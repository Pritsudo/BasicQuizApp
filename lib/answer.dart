import 'package:flutter/material.dart';

// String answer=

class Answer extends StatelessWidget {
  // const Answer({Key? key}) : super(key: key);

  final Function option;
  String answerText; 
  Answer(this.option, this. answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
      color: Color.fromARGB(255, 38, 132, 209),
        child: Text(answerText),
        onPressed: () {
          option();
        },
      ),
    );
  }
}
