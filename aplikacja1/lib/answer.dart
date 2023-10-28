import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function buttonQuestion;
  final String answerText;
  Answer(this.buttonQuestion, this.answerText);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: buttonQuestion,
        child: Text(answerText),
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.orange)),
      ),
    );
  }
}
