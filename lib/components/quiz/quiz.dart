import 'package:flutter/material.dart';
import 'package:trivia_academy/components/buttons/custom_button.dart';
import 'package:trivia_academy/components/custom_boxshadow.dart';
import 'package:trivia_academy/components/quiz/answers/custom_answer.dart';

import 'package:trivia_academy/components/quiz/questions/question.dart';
import 'package:trivia_academy/models/questions_answers.dart';

class Quiz extends StatefulWidget {
  const Quiz({Key key}) : super(key: key);

  @override
  _QuizState createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  List<QuestionAndAnswer> questionList = QuestionAndAnswer.getQuestionList();

  //
  int groupValue = 0;

  int score = 0; // Armazena os pontos
  int index = 0; // Responsavel por carregar as questions da lista

  // função para verificar aplicar e verificar resposta
  void _verifyReponse() {
    if (groupValue == questionList[index].answer) {
      score += 1;
    }
  }

  @override
  Widget build(BuildContext context) {
    //
    var item = questionList[index];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          color: Colors.red,
          padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
          margin: EdgeInsets.fromLTRB(32, 56, 32, 10),
          // color: Colors.red,
          child: Column(
            children: [
              Question(
                questionIndex: 'Pergunta ${index + 1}',
                question: questionList[index].question,
              ),
            ],
          ),
        ),
        // !

        Expanded(
          // Criando uma lista com respostas
          child: ListView(
            children: [
              CustomAnswer(
                title: item.option1,
                value: 1,
                groupValue: groupValue,
                onChanged: (newValue) {
                  setState(
                    () {
                      groupValue = newValue;
                    },
                  );
                },
              ),
              CustomAnswer(
                title: item.option2,
                value: 2,
                groupValue: groupValue,
                onChanged: (newValue) {
                  setState(
                    () {
                      groupValue = newValue;
                    },
                  );
                },
              ),
              CustomAnswer(
                title: item.option3,
                value: 3,
                groupValue: groupValue,
                onChanged: (newValue) {
                  setState(
                    () {
                      groupValue = newValue;
                    },
                  );
                },
              ),
              CustomAnswer(
                title: item.option4,
                value: 4,
                groupValue: groupValue,
                onChanged: (newValue) {
                  setState(
                    () {
                      groupValue = newValue;
                    },
                  );
                },
              ),
            ],
          ),
        ),

        //
        CustomContainerBoxShadow(
          child: Center(
            child: CustomButton(
              borderRadius: BorderRadius.circular(20),
              name: 'Responder',
              onPressed: () {
                setState(() {
                  _verifyReponse();
                  index += 1;
                });
              },
            ),
          ),
        ),
      ],
    );
  }
}
//
