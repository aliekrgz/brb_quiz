import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final questionText;
  final questionImage;
  const Question(this.questionText, this.questionImage);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (questionImage != null)
          ClipRRect(
            borderRadius: BorderRadius.circular(20.00),
            child: Image.asset(
              questionImage,
              height: 200,
            ),
          ),
        Container(
          padding: EdgeInsets.all(10),
          child: Center(
            child: Text(
              questionText,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ],
    );
  }
}
