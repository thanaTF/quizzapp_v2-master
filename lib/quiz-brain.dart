import 'question.dart';
class QuizBrain {

  int _questionNumber = 0;

  //TODO 1: ปรับเปลี่ยนหรือเพิ่มชุดคำถามใน questionBank ให้มีอย่างน้อย 5 คำถาม
  List<Question> _questionBank=[
    Question(q: 'log(0) = 1', a: false),
    Question(q: 'สีแดงเป็นแม่สี', a: true),
    Question(q: 'HCl is strong acid', a: true),
    Question(q: 'C2H2 named ethane', a: false),
    Question(q: 'Parabola equation is y = x^2', a: true),
  ];

  void nextQuestion() {
    if (_questionNumber < _questionBank.length-1) {
      _questionNumber++;
    }
  }

  String? getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  bool? getQuestionAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }

  bool isFinished() {
    if (_questionNumber >= _questionBank.length - 1) {
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    _questionNumber = 0;
  }

}