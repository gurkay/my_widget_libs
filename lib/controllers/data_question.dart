// abstraction object orientent programming
import '../models/model_question.dart';

class DataQuestion {
  // encapsulation _ notation
  int _questionIndex = 0;
  List<ModelQuestion> _questions = [
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

  String getQuestion() {
    return _questions[_questionIndex].question;
  }

  bool getAnswer() {
    return _questions[_questionIndex].answer;
  }

  void setQuestionIndex() {
    (_questionIndex < _questions.length - 1)
        ? _questionIndex++
        : _questionIndex = 0;
  }
}
