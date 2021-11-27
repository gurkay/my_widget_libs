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
    ModelQuestion(
        question:
            'Halim TSK Mehmetçik Vakfı Hafize İhsan Payaza İlkokulu ve Ortaokulu 2.Sınıfa gider.',
        answer: true),
    ModelQuestion(
        question: 'Halim in öğretmeninin adı Derya SAV dır.', answer: true),
    ModelQuestion(
        question: 'Halimin babası Bilgisayar Mühendisidir.', answer: true),
    ModelQuestion(question: 'Ankara Türkiye nin başkentidir.', answer: true),
  ];

  String getQuestion() {
    return _questions[_questionIndex].question;
  }

  bool getAnswer() {
    return _questions[_questionIndex].answer;
  }

  void setQuestionIndex() {
    if (_questionIndex < _questions.length - 1) {
      _questionIndex++;
    }
  }

  bool finishedQuestions() {
    if (_questionIndex >= _questions.length - 1) {
      return true;
    } else {
      return false;
    }
  }

  void returnFirstQuestion() {
    _questionIndex = 0;
  }
}
