import 'package:flutter/material.dart';
import 'package:trivia_academy/models/questions_answers.dart';

import 'custom_answer.dart';

class Answer extends StatefulWidget {
  const Answer({Key key}) : super(key: key);

  @override
  _AnswerState createState() => _AnswerState();
}

class _AnswerState extends State<Answer> {
  // Recebendo a lista
  List<QuestionAndAnswer> questionList = QuestionAndAnswer.getQuestionList();

  // Armazena o valor da resposta
  int groupValue = 0;

  @override
  Widget build(BuildContext context) {
    //

    return Expanded(
      child: ListView.builder(
        // shrinkWrap: true,
        itemCount: questionList.length,
        itemBuilder: (BuildContext context, int index) {
          var item = questionList[index];

          return Column(
            children: [
              CustomAnswer(
                title: item.option1,
                value: 1,
                groupValue: groupValue,
                onChanged: (newValue) {
                  setState(() {
                    groupValue = newValue;
                  });
                },
              ),
              CustomAnswer(
                title: item.option2,
                value: 2,
                groupValue: groupValue,
                onChanged: (newValue) {
                  setState(() {
                    groupValue = newValue;
                  });
                },
              ),
              CustomAnswer(
                title: item.option3,
                value: 3,
                groupValue: groupValue,
                onChanged: (newValue) {
                  setState(() {
                    groupValue = newValue;
                  });
                },
              ),
              CustomAnswer(
                title: item.option4,
                value: 4,
                groupValue: groupValue,
                onChanged: (newValue) {
                  setState(() {
                    groupValue = newValue;
                  });
                },
              ),
            ],
          );
        },
      ),
    );
  }
}
// Expanded(
//       // Criando uma lista com respostas
//       child: ListView(
//         children: [
//           CustomAnswer(
//             title: questionList[0].option1,
//             value: 1,
//             groupValue: groupValue,
//             onChanged: (newValue) {
//               setState(
//                 () {
//                   groupValue = newValue;
//                 },
//               );
//               print(groupValue);
//             },
//           ),
//         ],
//       ),
//     );
