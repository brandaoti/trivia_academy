import 'package:flutter/material.dart';

import '../../models/questions_answers.dart';
import '../../screens/result_screen.dart';
import '../buttons/custom_button.dart';
import '../containers/custom_boxshadow.dart';
import 'answers/custom_answer.dart';
import 'questions/question.dart';

class Quiz extends StatefulWidget {
  //
  // final int selectQuestion; // Responsavel por carregar as questions da lista
  // final Function onResponse;

  const Quiz({
    Key key,
    // this.selectQuestion,
    // this.onResponse,
  }) : super(key: key);

  @override
  _QuizState createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  List<QuestionAndAnswer> questionList = QuestionAndAnswer.getQuestionList();

  //
  int groupValue = 0;

  int _score = 0; // Armazena os pontos
  int _selectQuestion = 0; // Responsavel por carregar as questions da lista

  // função para responder
  void _onResponse() {
    if (groupValue == questionList[_selectQuestion].answer) {
      _score += 1;
    }
    _onVerifyResponse();
  }

  // Função para verificar se ainda tem pergunta
  void _onVerifyResponse() {
    //
    if (anyQuestions) {
      setState(() {
        _selectQuestion++;
      });
    } else {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (ctx) => ResultScreen(
            score: _score,
            totalQuestion: questionList.length,
          ),
        ),
      );
    }

    // Limpar caixa de seleção das resposta
    groupValue = 0;
  }

  // Função para verificar se ainda tem perguntas disponiveis
  bool get anyQuestions {
    return _selectQuestion < questionList.length - 1;
  }

  @override
  Widget build(BuildContext context) {
    //
    var item = questionList[_selectQuestion];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          // color: Colors.red,
          padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
          margin: EdgeInsets.fromLTRB(32, 56, 32, 10),
          // color: Colors.red,
          child: Column(
            children: [
              Question(
                questionIndex: 'Pergunta ${_selectQuestion + 1}',
                question: questionList[_selectQuestion].question,
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
              onPressed: () => _onResponse(),
            ),
          ),
        ),
      ],
    );
  }
}
//
