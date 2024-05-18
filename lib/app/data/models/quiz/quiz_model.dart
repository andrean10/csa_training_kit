class QuizModel {
  final String? image;
  final String question;
  final List<String> options;
  final int correctAnswerIndex;

  QuizModel({
    this.image,
    required this.question,
    required this.options,
    required this.correctAnswerIndex,
  });

  bool isCorrect(int selectedIndex) => selectedIndex == correctAnswerIndex;
}
