import 'package:flutter/material.dart';
import 'package:trivia_academy/components/answers/answer.dart';
import 'package:trivia_academy/components/answers/custom_answer.dart';
import 'package:trivia_academy/models/answer_model.dart';
import 'package:trivia_academy/models/question_model.dart';

// Tela de perguntas
class QuestionScreen extends StatefulWidget {
  // armazenar o valor do grupo de resposta
  @override
  _QuestionScreenState createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  int groupValue = 0;

  @override
  Widget build(BuildContext context) {
    var newList = [
      QuestionModel(
        question: 'O que é?',
        answers: [
          AnswerModel(
            title: 'Flutter?',
            value: 1,
            groupValue: groupValue,
          ),
          AnswerModel(
            title: 'Dart?',
            value: 2,
            groupValue: groupValue,
          ),
          AnswerModel(
            title: 'Unity?',
            value: 3,
            groupValue: groupValue,
          ),
          AnswerModel(
            title: 'C#?',
            value: 4,
            groupValue: groupValue,
          ),
        ],
      ),
      QuestionModel(
        question: 'O que é?',
        answers: [
          AnswerModel(
            title: 'Flutter?',
            value: 1,
            groupValue: groupValue,
          ),
          AnswerModel(
            title: 'Dart?',
            value: 2,
            groupValue: groupValue,
          ),
          AnswerModel(
            title: 'Unity?',
            value: 3,
            groupValue: groupValue,
          ),
          AnswerModel(
            title: 'C#?',
            value: 4,
            groupValue: groupValue,
          ),
        ],
      ),
      QuestionModel(
        question: 'O que é?',
        answers: [
          AnswerModel(
            title: 'Flutter?',
            value: 1,
            groupValue: groupValue,
          ),
          AnswerModel(
            title: 'Daaaart?',
            value: 2,
            groupValue: groupValue,
          ),
          AnswerModel(
            title: 'sdad?',
            value: 3,
            groupValue: groupValue,
          ),
          AnswerModel(
            title: 'Dasdsa',
            value: 4,
            groupValue: groupValue,
          ),
        ],
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text('Perguntas'),
        centerTitle: true,
        // backgroundColor: Color(0xFF374952),
      ),

      // body

      body: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          // Instanciando lista com respostas.
          Answer(
            newList: newList,
            onChanged: (newValue) {
              setState(() {
                groupValue = newValue;
              });
              // ! print(groupValue); OK
            },
          ),
        ],
      ),
    );
  }
}
