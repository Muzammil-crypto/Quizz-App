import 'package:flutter/material.dart';
//import 'package:my_shop_app/result.dart';
import 'quiz.dart';
import 'result.dart';

void main() {
  runApp(MyApp());
}

// void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'When Pakistan Came into  Existance?',
      'answers': [
        {'text': '18 November, 1976', 'score': 0},
        {'text': '13 June,2001', 'score': 0},
        {'text': '23 March, 1940', 'score': 0},
        {'text': '14 August, 1947', 'score': 10},
      ],
    },
    {
      'questionText': 'Which Force have most Shaheeds with Nishan-e-Haider?',
      'answers': [
        {'text': 'Pakistan Rangers', 'score': 0},
        {'text': 'Pakistan Airforce', 'score': 0},
        {'text': 'Pakistan Navy', 'score': 0},
        {'text': 'Pakistan Army ', 'score': 10},
      ],
    },
    {
      'questionText': 'Which is the second piller of Islam?',
      'answers': [
        {'text': 'Fast', 'score': 10},
        {'text': 'Salaah', 'score': 0},
        {'text': 'Hajj', 'score': 0},
        {'text': 'Zakaat', 'score': 0},
      ],
    },
    {
      'questionText': 'Who is current prime Minister of Pakistan?',
      'answers': [
        {'text': 'Imran Khan', 'score': 10},
        {'text': 'Nawaz Shareef', 'score': 0},
        {'text': 'Sikandar Mirza ', 'score': 0},
        {'text': 'Asif Ali Zardari', 'score': 0},
      ],
    },
    {
      'questionText':
          'The greatest monument of Pakistan-China collaboration is?',
      'answers': [
        {'text': 'Karakoram Highway', 'score': 10},
        {'text': 'Karachi-Gawadar Highway', 'score': 0},
        {'text': 'Lahore Orange Line', 'score': 0},
        {'text': 'K2 Base-camp', 'score': 0},
      ],
    },
    {
      'questionText': 'Who is current prime Minister of Pakistan?',
      'answers': [
        {'text': 'Imran Khan', 'score': 10},
        {'text': 'Nawaz Shareef', 'score': 0},
        {'text': 'Sikandar Mirza ', 'score': 0},
        {'text': 'Asif Ali Zardari', 'score': 0},
      ],
    },
    {
      'questionText': 'Pakistan is located in the....',
      'answers': [
        {'text': 'East Asia', 'score': 10},
        {'text': 'West Asia', 'score': 0},
        {'text': 'South Asia', 'score': 0},
        {'text': 'Central Asia', 'score': 0},
      ],
    },
    {
      'questionText':
          'Pakistan has a 1046 kilometer coastline in Sindh and Baluchistan. The coastline is located along the',
      'answers': [
        {'text': 'Arabian Sea', 'score': 10},
        {'text': 'Gwadar Coast', 'score': 0},
        {'text': 'Iranian Sea', 'score': 0},
        {'text': 'Gulf Sea', 'score': 0},
      ],
    },
    {
      'questionText':
          'Which from the following countries is not bordered by Pakistan?',
      'answers': [
        {'text': 'India', 'score': 0},
        {'text': 'Afghanistan', 'score': 10},
        {'text': 'China', 'score': 0},
        {'text': 'Bangladesh', 'score': 0},
      ],
    },
    {
      'questionText':
          'The only country with which Pakistan shares a maritime border (and not the land border) is?',
      'answers': [
        {'text': ' Iran', 'score': 10},
        {'text': 'Oman', 'score': 0},
        {'text': 'UAE', 'score': 0},
        {'text': 'Saudi Arabia', 'score': 0},
      ],
    },
  ];
  var _totalScore = 0;
  var _questionIndex = 0;
  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore = _totalScore + score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });

    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print('We have more questions');
    } else {
      print('No More Questions !!');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          title: Text('Quiz for Sharp Brains'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
