// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questionIndex = 0;
  void answerQuerstion() {
    questionIndex++;
    print(questionIndex);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favorite color?',
      'What\'s your favorite animal?'
    ];
    return MaterialApp(
      theme: ThemeData(
        // Define the default brightness and colors.
        brightness: Brightness.dark,
        primaryColor: Color(0xFF1D1B20),  // Adjusted color code here
        // Define the default font family.
        fontFamily: 'Georgia',
      ),
      home: Scaffold(
        body: Column(children: <Widget>[
          Text(questions.elementAt(questionIndex)),
          ElevatedButton(onPressed: answerQuerstion, child: Text('Мороз')),
          ElevatedButton(onPressed: answerQuerstion, child: Text('Роман П.')),
          ElevatedButton(onPressed: answerQuerstion, child: Text('Дан....')),
        ]),
      ),
    );
  }
}
