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
        'Qual foi o primeiro filme a ser lançado pela Marvel Studios?',
        'Homem Aranha.',
        'Homem de Ferro.',
        'Capitão America, o primeiro Vingador.',
        'O Incrível Hulk.',
        2,
      ),
    );
    // 1
    questions.add(
      QuestionAndAnswer(
        'Qual o nome da Melhor Amiga da Carol Daverns?',
        'Sky Davers.',
        'Monica Rambeu.',
        'Darcy Lewis.',
        'Maria Rambeu.',
        4,
      ),
    );
    // 2
    questions.add(
      QuestionAndAnswer(
        'Qual o nome da esposa de Tony Stark?',
        'Nathasha Romannofy.',
        'Pepper Poots.',
        'Peggy Carter.',
        'Jane Foster.',
        2,
      ),
    );
    // 3
    questions.add(
      QuestionAndAnswer(
        'Qual o nome dos seis vingadores originais?',
        'Tony Stark, Steve Rogers, Thor Odisson, Bruce Benner, Nathasha Romannofy e Clint Barton.',
        'Pietro Maximoff, Scoot Lang, Peter Parker, Carol Daverns, Gamora e Roket.',
        'Peter Quil, Doutor Estranho, Nick Fury, Valquiría, Phill Consol e Pantera Negra.',
        'San Winson, Bucky barnes, Loki Laufeyson, Maria Hill, Wanda Maximoff e Visão.',
        1,
      ),
    );
    // 4
    questions.add(
      QuestionAndAnswer(
        'Quais são os nomes dos Três filhos de Odin na ordem cronológica?',
        'Loki Laufeyson, Hela e Thor Odisson.',
        'Thor Odisson, Loki Laudeyson e Hela.',
        'Hela, Thor Odisson e Loki Laudeyson.',
        'Thor Odisson, Hela e Loki Laufeyson.',
        3,
      ),
    );
    // 5
    questions.add(
      QuestionAndAnswer(
        'Quais são os nomes dos guardiões da galáxia?',
        'Peter Quill, Gamora, Roket, Drax e Mantis.',
        'Nick Fury, Maria Hill, Phill Consol, Melinda May, Mônica Rambeu e Maria Rambeu.',
        'Loki Laufeyson, Valquiría, Lady Sify, Helmadall e Odin e Hela.',
        'Tony Stark, Steve Rogers, Bruce Benner, Nathasha Romannofy e Clint Barton.',
        1,
      ),
    );
    // 6
    questions.add(
      QuestionAndAnswer(
        'Em Vingadores, quantas pessoas Loki matou em dois dias?',
        '65',
        '50',
        '80',
        '100',
        3,
      ),
    );
    // 7
    questions.add(
      QuestionAndAnswer(
        'Quem criou o Ultron?',
        'Tony Stark e Bruce Benner',
        'Clint Barton e Bruce Benner',
        'Wanda e Visão',
        'Steve Rogers e Bucky Barnes',
        1,
      ),
    );
    // 8
    questions.add(
      QuestionAndAnswer(
        'Em que ano foi lançado o filme Vingadores?',
        '2012',
        '2008',
        '2010',
        '2014',
        1,
      ),
    );
    // 9
    questions.add(
      QuestionAndAnswer(
        'Qual o nome da filha de Tony Stark?',
        'Morgan',
        'Shuri',
        'Cassie',
        'Emily',
        1,
      ),
    );

    return questions;
  }
}
