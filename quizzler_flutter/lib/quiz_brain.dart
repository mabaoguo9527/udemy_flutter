import 'package:quizzler_flutter/question.dart';

class QuizBrain {
  int _questionNumber = 0;
  final List<Question> _questions = [
    Question('You can lead a cow down stairs but not up stairs.', false),
    Question('Approximately one quarter of human bones are in the feet.', true),
    Question('A slug\'s blood is green.', true),
  ];

  int size() {
    return _questions.length;
  }

  void nextQuestion() {
    if (_questionNumber == _questions.length - 1) {
      return;
    }
    _questionNumber++;
  }

  String getQuestionText() {
    return _questions[_questionNumber].questionText;
  }

  bool getQuestionAnswer() {
    return _questions[_questionNumber].answer;
  }
}
