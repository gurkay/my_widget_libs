import 'package:flutter/material.dart';

import '../models/model_question.dart';
import '../constants/const_question_app.dart';

class ScreenQuestionApp extends StatefulWidget {
  const ScreenQuestionApp({Key? key}) : super(key: key);

  @override
  State<ScreenQuestionApp> createState() => _ScreenQuestionAppState();
}

class _ScreenQuestionAppState extends State<ScreenQuestionApp> {
  List<Widget> selections = [];
  List<ModelQuestion> questions = [
    ModelQuestion(
      question: 'Marrakesh is the capital of Morocco?',
      answer: false,
    ),
    ModelQuestion(
      question: 'Waterloo has the greatest number of tube platforms in Londo?',
      answer: true,
    ),
    ModelQuestion(
      question: 'The unicorn is the national animal of Scotland?',
      answer: true,
    ),
  ];
  int questionIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo[700],
      appBar: AppBar(
        title: Text('Question App'),
        backgroundColor: Colors.indigo,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 4,
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Center(
                child: Text(
                  questions[questionIndex].question,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          Wrap(
            spacing: 10.0,
            runSpacing: 10.0,
            alignment: WrapAlignment.center,
            children: selections,
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 6.0),
              child: Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.red[400],
                        ),
                        child: Container(
                          padding: EdgeInsets.all(12.0),
                          child: Icon(
                            Icons.thumb_down,
                            size: 30.0,
                          ),
                        ),
                        onPressed: () {
                          setState(() {
                            selections.add(cWrongIcon);
                            questionIndex++;
                          });
                        },
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.green[400],
                        ),
                        onPressed: () {
                          setState(() {
                            selections.add(cRightIcon);
                            questionIndex++;
                          });
                        },
                        child: Container(
                          padding: EdgeInsets.all(12.0),
                          child: Icon(
                            Icons.thumb_up,
                            size: 30.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}