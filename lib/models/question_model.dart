//
import 'package:flutter/cupertino.dart';
import 'package:trivia_academy/models/answer_model.dart';

class QuestionModel {
  final String question;
  final int answer;
  final List<AnswerModel> answers;

  QuestionModel({
    @required this.question,
    @required this.answers,
    @required this.answer,
  });

  QuestionModel copyWith({
    String question,
    List<AnswerModel> answers,
    int answer,
  }) =>
      QuestionModel(
        question: question ?? this.question,
        answer: answer ?? this.answer,
        answers: answers ?? this.answers,
      );
}

// QuestionModel({
//     @required this.question,
//     @required this.answer,
//     @required this.answers,
//   });

// {
//   "question": "XX",
//   "answers": [
//     {
//       "title": "respValue",
//       "value": 1,
//       "groupValue": 1,
//     }
//   ]
// }
