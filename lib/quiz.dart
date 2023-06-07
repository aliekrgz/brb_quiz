import 'package:brbquiz/answer.dart';
import 'package:brbquiz/question.dart';
import 'package:flutter/material.dart';

class Quiz extends StatelessWidget {
  final questionIndex;
  final questions;
  final Function answerQuestion;

  const Quiz(
      {required this.questionIndex,
      required this.questions,
      required this.answerQuestion});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questions[questionIndex]['questionText'],
          questions[questionIndex]['questionImage'],
        ),
        ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(
            answer['text'],
            () => answerQuestion(answer['score']),
          );
        })
      ],
    );
  }
}
