import 'package:flutter/material.dart';
import 'quiz.dart';
import 'result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  int _questionIndex = 0;
  int _totalscore = 0;
  int _actionQuestionIndex = 1;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalscore = 0;
      _actionQuestionIndex = 1;
    });
  }

  void _answerQuestion(int score) {
    _totalscore += score;
    setState(() {
      _questionIndex++;
      _actionQuestionIndex++;
    });
  }

  final _questions = const [
    {
      'questionText':
          'What was the name of the episode in which Gus Fring was killed ?',
      'questionImage': 'assets/Q-1.webp',
      'answers': [
        {
          'text': 'Box Cutter',
          'score': 0,
        },
        {'text': 'Face Off', 'score': 1},
        {'text': 'Blood Money', 'score': 0},
        {'text': 'To\'hajiilee', 'score': 0}
      ]
    },
    {
      'questionText':
          'What is the name of the car wash that Walter White and Skyler White purchase to launder money ?',
      'questionImage': 'assets/Q-2.jpg',
      'answers': [
        {'text': 'A1A Car Wash', 'score': 1},
        {'text': 'Bubbles Car Wash', 'score': 0},
        {'text': 'Blue Sky Car Wash', 'score': 0},
        {'text': 'Super Car Wash', 'score': 0},
      ]
    },
    {
      'questionText':
          'What is the name of the infamous tortoise that Gus Fring uses to deliver a bomb to Don Eladio ?',
      'questionImage': 'assets/Q-3.jpg',
      'answers': [
        {'text': 'Speedy', 'score': 0},
        {'text': 'Esmeralda', 'score': 0},
        {'text': 'George', 'score': 0},
        {'text': 'Tortuga', 'score': 1},
      ]
    },
    {
      'questionText':
          'What is the name of the infant daughter of Walt and Skyler White ?',
      'questionImage': 'assets/Q-4.jpg',
      'answers': [
        {'text': 'Hailey', 'score': 0},
        {'text': 'Marie', 'score': 0},
        {'text': 'Holly', 'score': 1},
        {'text': 'Jane', 'score': 0},
      ]
    },
    {
      'questionText':
          'What did Walter and Jesse use to destroy Gus\' laptop held as evidence in Season 5 ?',
      'questionImage': 'assets/Q-5.jpg',
      'answers': [
        {'text': 'A Fire', 'score': 0},
        {'text': 'An Electromagnet', 'score': 1},
        {'text': 'A Weather Balloon', 'score': 0},
        {'text': 'A Digital Scrambler', 'score': 0},
      ]
    },
    {
      'questionText':
          'What did Walter find in his swimming pool filter after the airplane collision over his house ?',
      'questionImage': 'assets/Q-6.png',
      'answers': [
        {'text': 'A Plastic Eyeball', 'score': 1},
        {'text': 'A Schored Wallet', 'score': 0},
        {'text': 'A Finger', 'score': 0},
        {'text': 'An Oxygen Mask', 'score': 0},
      ]
    },
    {
      'questionText': 'What\'s the name of Jesse Pinkman\'s younger brother ?',
      'questionImage': 'assets/Q-7.webp',
      'answers': [
        {'text': 'John', 'score': 0},
        {'text': 'Javier', 'score': 0},
        {'text': 'Joe', 'score': 0},
        {'text': 'Jake', 'score': 1}
      ]
    },
    {
      'questionText':
          'Who two periodic elements\' symbols appear in the show\'s opening title sequence ?',
      'questionImage': 'assets/Q-8.jpg',
      'answers': [
        {'text': 'Boron & Bismuth', 'score': 0},
        {'text': 'Lead & Nickel', 'score': 0},
        {'text': 'Bohrium & Berkelium', 'score': 0},
        {'text': 'Bromine & Barium', 'score': 1},
      ]
    },
    {
      'questionText':
          'Which character did the show runners originally plan to kill off in the ninth episode of the series?',
      'questionImage': 'assets/Q-9.jpg',
      'answers': [
        {'text': 'Walter White Jr.', 'score': 0},
        {'text': 'Jesse Pinkman', 'score': 1},
        {'text': 'Saul Goodman', 'score': 0},
        {'text': 'Skyler White', 'score': 0},
      ]
    },
    {
      'questionText':
          'Which book does Hank find that makes him realize Walter White is a meth dealer ?',
      'questionImage': 'assets/Q-10.jpg',
      'answers': [
        {'text': 'Drum Taps', 'score': 0},
        {'text': 'Song Of Myself', 'score': 0},
        {'text': 'Leaves Of Grass', 'score': 1},
        {'text': 'Franklin Evans', 'score': 0},
      ]
    },
    {
      'questionText':
          'What character never met Jesse Pinkman through the show\'s entire run ?',
      'questionImage': 'assets/Q-11.webp',
      'answers': [
        {'text': 'Walter White Jr.', 'score': 1},
        {'text': 'Hank Schrader', 'score': 0},
        {'text': 'Marie Schrader', 'score': 0},
        {'text': 'Skyler White', 'score': 0},
      ]
    },
    {
      'questionText':
          'What does Walter White buy to help him remember where he buried his money in the final season ?',
      'questionImage': 'assets/Q-12.jpg',
      'answers': [
        {'text': 'A Pocket Calendar', 'score': 0},
        {'text': 'A Cell Phone', 'score': 0},
        {'text': 'A Lottery Ticket', 'score': 1},
        {'text': 'A Combination Lock', 'score': 0},
      ]
    },
    {
      'questionText':
          'What nickname does Walter White Jr. prefer to be called ?',
      'questionImage': 'assets/Q-13.webp',
      'answers': [
        {'text': 'Franklin', 'score': 0},
        {'text': 'Flynn', 'score': 1},
        {'text': 'Frag', 'score': 0},
        {'text': 'Fly', 'score': 0},
      ]
    },
    {
      'questionText':
          'What pest company serves as a front for Walt and Jesse\'s drug operations in Season 5?',
      'questionImage': 'assets/Q-14.webp',
      'answers': [
        {'text': 'Vamonos Pest', 'score': 1},
        {'text': 'ExtermiNation', 'score': 0},
        {'text': 'Pestbusters', 'score': 0},
        {'text': 'Bug Be Gone', 'score': 0},
      ]
    },
    {
      'questionText':
          'What does Saul insist Walt put his money in before Skyler convinces him to buy the car wash?',
      'questionImage': 'assets/Q-15.jpg',
      'answers': [
        {'text': 'A McDonald\'s', 'score': 0},
        {'text': 'A Drug Store', 'score': 0},
        {'text': 'Bakery', 'score': 0},
        {'text': 'Laser Tag', 'score': 1},
      ]
    },
    {
      'questionText': 'What is the name of the series\' final episode?',
      'questionImage': 'assets/Q-16.jpg',
      'answers': [
        {'text': 'Ozymandias', 'score': 0},
        {'text': 'Rabid Dog', 'score': 0},
        {'text': 'Granite State', 'score': 0},
        {'text': 'Felina', 'score': 1},
      ]
    }
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Breaking Bad Quiz',
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
            ),
          ),
          actions: [
            _actionQuestionIndex <= 16
                ? Text(
                    '$_actionQuestionIndex/16',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  )
                : Text('Completed!'),
          ],
          backgroundColor: Color(0xFF004225),
          centerTitle: true,
        ),
        backgroundColor: const Color(0xFF004225),
        body: _questionIndex < _questions.length
            ? Quiz(
                questionIndex: _questionIndex,
                questions: _questions,
                answerQuestion: _answerQuestion,
              )
            : Result(_totalscore, _resetQuiz),
      ),
    );
  }
}
