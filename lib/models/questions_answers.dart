class QuestionAndAnswer {
  final String question, option1, option2, option3, option4;
  final int answer;

  QuestionAndAnswer(
    this.question,
    this.option1,
    this.option2,
    this.option3,
    this.option4,
    this.answer,
  );

  static List<QuestionAndAnswer> getQuestionList() {
    List<QuestionAndAnswer> questions = [];

    questions.add(
      QuestionAndAnswer(
        'O que é Flutter?',
        'SDK',
        'Linguagem de programação',
        'Uma engine de jogos',
        'Uma peixe',
        1,
      ),
    );

    return questions;
  }
}
