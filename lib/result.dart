import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  late int resultScore;
  final VoidCallback resetQuiz;

  Result(this.resultScore, this.resetQuiz);

  String get resultPhrase {
    String resultText;
    if (resultScore <= 5) {
      resultText = 'Looks like you have some more watching to do.';
    } else if (resultScore <= 10) {
      resultText = 'You\'re a pretty good fan. Keep up the good work!';
    } else if (resultScore <= 15) {
      resultText = 'Wow, you really know your stuff!';
    } else {
      resultText = 'Congratulations!';
    }

    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(children: [
        Container(
          height: 120,
        ),
        Text(
          'Your score is $resultScore/16',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24,
            color: Colors.white,
          ),
          textAlign: TextAlign.center,
        ),
        Container(
          height: 30,
        ),
        Text(
          resultPhrase,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24,
            color: Colors.white,
          ),
          textAlign: TextAlign.center,
        ),
        Container(
          height: 80,
        ),
        TextButton(
          onPressed: resetQuiz,
          child: Text(
            'Restart',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ]),
    );
  }
}
