import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;
  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String resultText;
    if (resultScore <= 54) {
      resultText = 'Sorry...You Failed in this Quiz, Better Luck Next Time! ';
    } else if (resultScore <= 70) {
      resultText = 'Pretty Likeable';
    } else if (resultScore <= 80) {
      resultText = 'You Did Exceptional';
    } else {
      resultText = 'Wtf??';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Text(
              resultPhrase,
              style: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueGrey),
              textAlign: TextAlign.center,
            ),
          ),
          FlatButton(
            child: Padding(
              padding: const EdgeInsets.only(top: 180),
              child: Text(
                'Start Again',
                style: TextStyle(
                    backgroundColor: Colors.blueGrey,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                    textBaseline: TextBaseline.ideographic),
              ),
            ),
            onPressed: resetHandler,
          ),
        ],
      ),
    );
  }
}
