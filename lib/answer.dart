// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;
  final String answerText;
  const Answer(this.selectHandler, this.answerText, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      
      child: ElevatedButton(
          onPressed: selectHandler,

          style: ButtonStyle(
            foregroundColor: MaterialStateProperty.all(
                Colors.white), // This is the text color
            backgroundColor: MaterialStateProperty.all(
                Colors.red), // This is the background color
          ),
          child: Text(answerText)),
    );
  }
}
