import 'package:flutter/material.dart';
import 'package:mcq_app/Widget/answerButton.dart';
import 'package:mcq_app/data/localData.dart';

class QuestionScreen extends StatefulWidget {
  @override
  _QuestionScreen createState() => _QuestionScreen();
}

class _QuestionScreen extends State<QuestionScreen> {
  var _questionIndex = 0;
  int finalScore = 0;

  @override
  void initState() {
    super.initState();
   shuffleData(question);

  }


  void answerQuestion(String x) {
    setState(() {

      if (_questionIndex < question.length) {
        if (x == question[_questionIndex].correctAnswer) finalScore += 2;
      }
      _questionIndex += 1;
    });
  }

  @override
  Widget build(BuildContext context) {

    if( _questionIndex <question.length)
   shuffleData(question[_questionIndex].answer);

    return Scaffold(
      appBar: AppBar(
        title: Text('Answer The Following Questions',textAlign: TextAlign.center,),
      ),
      body: _questionIndex < question.length
          ? Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(question[_questionIndex].questionContent),
                ),
                Container(
                  height: 300,
                  child: ListView.builder(
                    itemCount: question.length,
                    itemBuilder: (context, index) {

                      return AnswerButton(
                          () => answerQuestion(
                              question[_questionIndex].answer[index]),
                               question[_questionIndex].answer[index]);
                    },
                  ),
                )
              ],
            )
          : Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(' Congratulations !'),
                  Text(finalScore.toString())
                ],
              ),
            ),
    );
  }
  void shuffleData(List item )
   {
     item..shuffle();

   }
}
