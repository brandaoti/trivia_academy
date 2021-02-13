import 'package:flutter/material.dart';
import 'package:trivia_academy/components/buttons/custom_button.dart';

import '../../models/question_model.dart';
import 'custom_answer.dart';

class Answer extends StatefulWidget {
  final List<QuestionModel> newList;
  final Function onChanged;

  const Answer({
    Key key,
    this.newList,
    this.onChanged,
  }) : super(key: key);

  @override
  _AnswerState createState() => _AnswerState();
}

class _AnswerState extends State<Answer> {
  PageController pageController = PageController(initialPage: 0);
  // List<QuestionModel> questionList;

  int answer = 0;
  int score = 0;

  // Métdo para verificar a resposta
  void verifyResponse() {}

  @override
  // ignore: must_call_super
  void dispose() {
    pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // Criando uma lista com respostas

    //
    return Column(
      children: [
        Container(
          height: 650,
          child: PageView.builder(
            physics: NeverScrollableScrollPhysics(),
            controller: pageController,
            itemCount: widget.newList.length,
            itemBuilder: (context, index) {
              //
              var item = widget.newList[index];

              return Container(
                // padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                margin: EdgeInsets.fromLTRB(32, 56, 32, 56),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Cria lista de perguntas

                    Text(
                      item.question,
                      style: TextStyle(fontSize: 16, color: Color(0xFF4C4C4C)),
                    ),

                    SizedBox(height: 20),

                    // ! Cria lista com as perguntas
                    ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: item.answers.length,
                      itemBuilder: (BuildContext context, int index) {
                        // !Armazena a lista de respostas
                        var answer = item.answers[index];

                        return CustomAnswer(
                          margin: EdgeInsets.symmetric(vertical: 10),
                          title: answer.title,
                          value: answer.value,
                          groupValue: answer.groupValue,
                          onChanged: widget.onChanged,
                        );
                      },
                    ),
                  ],
                ),
              );
            },
          ),
        ),
        //
        Container(
          height: 80,
          width: MediaQuery.of(context).size.width,
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 1,
                blurRadius: 3,
                offset: Offset(0, -1),
              ),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CustomButton(
                name: '<<',
                borderRadius: BorderRadius.circular(20),
                padding: EdgeInsets.symmetric(horizontal: 60, vertical: 11),
                onPressed: () {
                  setState(() {
                    pageController.previousPage(
                      duration: Duration(milliseconds: 300),
                      curve: Curves.easeOut,
                    );
                  });
                },
              ),
              CustomButton(
                name: '>>',
                borderRadius: BorderRadius.circular(20),
                padding: EdgeInsets.symmetric(horizontal: 60, vertical: 11),
                onPressed: () {
                  setState(() {
                    verifyResponse();
                    answer = 0;
                    pageController.nextPage(
                      duration: Duration(milliseconds: 300),
                      curve: Curves.easeOut,
                    );
                  });
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}
