import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  // const Question({Key? key}) : super(key: key);
  var question;
  Question(this.question);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      // margin: EdgeInsets.all(16),
      child: Text(question,
       style: TextStyle(fontSize: 28),
       textAlign: TextAlign.center,),
    );
  }
}
