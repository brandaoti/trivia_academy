import 'package:trivia_academy/models/answer_model.dart';
import 'package:trivia_academy/models/question_model.dart';

class QuestionAnswersController {
  static int groupValue = 0;

  //
  static List<QuestionModel> getQuestionList() {
    List<QuestionModel> questions = [];

    questions.add(
      QuestionModel(
        question: 'O que é mar?',
        answers: [
          AnswerModel(
            title: 'Um local com muita agua doce',
            value: 1,
            groupValue: groupValue,
          ),
          AnswerModel(
            title: 'Um local com muita agua salgada',
            value: 2,
            groupValue: groupValue,
          ),
          AnswerModel(
            title: 'Um container',
            value: 3,
            groupValue: groupValue,
          ),
          AnswerModel(
            title: 'Um widget',
            value: 4,
            groupValue: groupValue,
          ),
        ],
        answer: 2,
      ),
    );

    return questions;
  }
}
