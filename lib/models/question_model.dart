//
import 'package:flutter/cupertino.dart';
import 'package:trivia_academy/models/answer_model.dart';

class QuestionModel {
  final String question;
  final List<AnswerModel> answers;

  QuestionModel({
    @required this.question,
    @required this.answers,
  });

  QuestionModel copyWith({
    String question,
    List<AnswerModel> answers,
  }) =>
      QuestionModel(
        question: question ?? this.question,
        answers: answers ?? this.answers,
      );
}
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
