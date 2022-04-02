import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  // const Result({Key? key}) : super(key: key);
 final int marks;
 final Function reset;
  Result(this.marks, this.reset);
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: [
        Text("Marks is : ${marks}"),
        ElevatedButton(
            onPressed: () {
              reset();
            },
            child: Text("Reset Quiz"))
      ],
    ));
  }
}
