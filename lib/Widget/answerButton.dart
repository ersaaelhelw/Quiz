import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  final Function selectAnswer;
  final String answer;
  AnswerButton(this.selectAnswer, this.answer);
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: selectAnswer,
      child: Text(answer),
    );
  }
}
