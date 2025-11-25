import 'question.dart';

class QuizBrain {
  int _index = 0;
  final List<Question> _questionBank = [
    Question(questionText: 'Is the sky blue?', questionAnswer: true),
    Question(
      questionText: 'does every month have 28 days?',
      questionAnswer: true,
    ),
    Question(questionText: 'A slug\'s blood is green.', questionAnswer: true),
  ];
  void nextQuestion() {
    if (_index < _questionBank.length - 1) {
      _index++;
    }
  }

  String getQuestionText() {
    return _questionBank[_index].questionText;
  }

  bool getQuestionAnswer() {
    return _questionBank[_index].questionAnswer;
  }

  bool isFinished() {
    return (_index == _questionBank.length - 1) ? true : false;
  }

  void reset() {
    _index = 0;
  }
}
