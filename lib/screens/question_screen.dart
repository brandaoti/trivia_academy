import 'package:flutter/material.dart';

import 'package:trivia_academy/components/buttons/custom_button.dart';
import 'package:trivia_academy/components/custom_boxshadow.dart';
import 'package:trivia_academy/components/quiz/quiz.dart';
import 'package:trivia_academy/controllers/question_answers_controller.dart';
import 'package:trivia_academy/models/question_model.dart';
import 'package:trivia_academy/models/questions_answers.dart';

// Tela de perguntas
class QuestionScreen extends StatefulWidget {
  @override
  _QuestionScreenState createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  //
  List<QuestionAndAnswer> questionList = QuestionAndAnswer.getQuestionList();

  int _score = 0; // Armazena os pontos
  int _selectQuestion = 0; // Seleciona as perguntsa

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
          centerTitle: true,
          // backgroundColor: Color(0xFF374952),
        ),

        //
        body: Quiz());
  }
}

// body
// body: Column(
//   crossAxisAlignment: CrossAxisAlignment.start,
//   children: [
//     // Criando container com perguntas
//     Container(
//       // color: Colors.red,
//       // padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
//       // margin: EdgeInsets.fromLTRB(32, 56, 32, 10),
//       // color: Colors.red,
//       child: Column(
//         // crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           //   Text(
//           //     'Pergunta ${index + 1}',
//           //     style: TextStyle(fontSize: 12, color: Color(0xFF4C4C4C)),
//           //   ),
//           //   SizedBox(height: 10),
//           //   Text(
//           //     questionList[index].question,
//           //     style: TextStyle(
//           //       fontSize: 16,
//           //       color: Color(0xFF4C4C4C),
//           //     ),
//           //   ),
//           // !
//         ],
//       ),
//     ),
//     Quiz(),

//     // * instanciar answers
//     // Answer(),
//   ],
// ),

// CustomAnswer(
//                       margin: EdgeInsets.fromLTRB(0, 5, 0, 5),
//                       title: newItem.title,
//                       value: newItem.value,
//                       groupValue: newItem.groupValue,
//                       onChanged: (newValue) {
//                         setState(() {
//                           groupValue = newValue;
//                         });
//                         print(groupValue);
//                       },
//                     );

// var newList = [
//   QuestionModel(
//     question: 'O que é Flutter?',
//     answers: [
//       AnswerModel(
//         title: 'Flutter?',
//         value: 1,
//         groupValue: groupValue,
//       ),
//       AnswerModel(
//         title: 'Dart?',
//         value: 2,
//         groupValue: groupValue,
//       ),
//       AnswerModel(
//         title: 'Unity?',
//         value: 3,
//         groupValue: groupValue,
//       ),
//       AnswerModel(
//         title: 'C#?',
//         value: 4,
//         groupValue: groupValue,
//       ),
//     ],
//   )
// ];
