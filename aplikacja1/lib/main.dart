import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/quiz.dart';
import 'package:flutter_complete_guide/result.dart';
import './question.dart';
import './answer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  MyAppState createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  static const questions = [
    {
      'questionText': 'what is your favorite color',
      'answers': ['Black', 'Red', 'Green']
    },
    {
      'questionText': 'what is your favorite animal',
      'answers': ['Giraffe', 'Elephant', 'Snake']
    },
  ];
  var index = 0;
  void answerQuestion() {
    setState(() {
      index++;
    });
    print(index);
    if (index < questions.length) {
      print("we have more questions");
    } else {
      print('no more questions');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('moja aplikacja'),
        ),
        body: index < questions.length
            ? Quiz(
                answerQuestion: answerQuestion,
                questions: questions,
                index: index)
            : Result(),
      ),
    );
  }
}
