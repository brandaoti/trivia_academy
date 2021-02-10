import 'package:flutter/material.dart';
import 'package:trivia_academy/components/answers/custom_answer.dart';
import 'package:trivia_academy/models/answer_model.dart';

class Answer extends StatefulWidget {
  @override
  _AnswerState createState() => _AnswerState();
}

class _AnswerState extends State<Answer> {
  // armazenar o valor do grupo de resposta
  int groupValue = 0;

  @override
  Widget build(BuildContext context) {
    // Criando uma lista com respostas
    final answerList = [
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
    ];

    //
    return Expanded(
      child: ListView.builder(
        itemCount: answerList.length,
        itemBuilder: (BuildContext context, int index) {
          //
          var item = answerList[index];

          return CustomAnswer(
            title: item.title,
            value: item.value,
            groupValue: item.groupValue,
            onChanged: (newValue) {
              setState(() {
                groupValue = newValue;
              });
              //// print(groupValue); OK
            },
          );
        },
      ),
    );
  }
}
