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
        'Uma linguagem de programação.',
        'Um framework para desenvolvimento de aplicações mobile, web e desktop.',
        'Um framework desenvolvido exclusivamente para criação de sites.',
        'Nda.',
        1,
      ),
    );

    return questions;
  }
}
