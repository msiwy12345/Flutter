import 'package:flutter/material.dart';

class ResultScreen extends StatefulWidget {
  final String result;

  ResultScreen({required this.result});

  @override
  ResultScreenState createState() {
    return ResultScreenState();
  }
}

class ResultScreenState extends State<ResultScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(widget.result, style: const TextStyle(fontSize: 31.0)),
      ],
    );
  }
}
