// 问题类
class Question {
  final String questionText;
  final bool answer;

  Question(this.questionText, this.answer);
  //
  // Question({String q, bool a}) {
  //   questionText = q;
  //   answer = a;
  // }

  @override
  String toString() {
    return 'Question{question: $questionText, result: $answer}';
  }
}
