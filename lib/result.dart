// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetHandler;
  const Result(this.resultScore,this.resetHandler, {super.key});
  String get resultPhrase {
    String resultText = 'You did it!';
    if (resultScore <= 8) {
      resultText = "You are awersome and innocent";
    } else if (resultScore <= 12) {
      resultText = "Pretty likable!";
    } else if (resultScore <= 16) {
      resultText = "You are....strange";
    } else {
      resultText = "You are so bad";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(resultPhrase,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.bold,
              )),
          TextButton(
            onPressed: resetHandler,
            child: Text('Restart quiz'),
            style: ButtonStyle(foregroundColor: MaterialStateProperty.all(Colors.red)),)
        ],
      ),
    );
  }
}
