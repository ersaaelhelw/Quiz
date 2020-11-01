import 'package:flutter/foundation.dart';

class Question {
  final String questionContent;
   final List<String> answer;
   final correctAnswer;
  final int score;
  Question(
      {@required this.questionContent,
     this.answer,
      @required this.score,@required this.correctAnswer});
}
