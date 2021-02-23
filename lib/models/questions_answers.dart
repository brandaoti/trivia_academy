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

    // 0
    questions.add(
      QuestionAndAnswer(
        'O que é Flutter?',
        'Uma linguagem de programação.',
        'Um framework para desenvolvimento de aplicações mobile, web e desktop.',
        'Um framework desenvolvido exclusivamente para criação de sites.',
        'Uma engine de jogos',
        1,
      ),
    );
    // 1
    // questions.add(
    //   QuestionAndAnswer(
    //     'Qual linguagem de programação é usado pelo Flutter?',
    //     'Javascript.',
    //     'Dart.',
    //     'C#.',
    //     'Java.',
    //     2,
    //   ),
    // );

    return questions;
  }
}
