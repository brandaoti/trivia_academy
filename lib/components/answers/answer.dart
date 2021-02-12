import 'package:flutter/material.dart';
import 'package:trivia_academy/components/answers/custom_answer.dart';
import 'package:trivia_academy/components/buttons/custom_button.dart';
import 'package:trivia_academy/models/answer_model.dart';
import 'package:trivia_academy/models/question_model.dart';

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
          height: 580,
          child: PageView.builder(
            physics: NeverScrollableScrollPhysics(),
            controller: pageController,
            itemCount: widget.newList.length,
            itemBuilder: (context, index) {
              //
              var item = widget.newList[index];

              return Container(
                // padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                margin: EdgeInsets.fromLTRB(32, 56, 32, 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Cria lista de perguntas
                    Text(
                      item.question,
                      style: TextStyle(fontSize: 12, color: Color(0xFF4C4C4C)),
                    ),

                    // ! Cria lista com as perguntas
                    ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: item.answers.length,
                      itemBuilder: (BuildContext context, int index) {
                        // !Armazena a lista de respostas
                        var answer = item.answers[index];

                        return CustomAnswer(
                          margin: EdgeInsets.symmetric(vertical: 20),
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
          height: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              FlatButton(
                child: Text('Deu ruim'),
                onPressed: () {
                  setState(() {
                    pageController.previousPage(
                      duration: Duration(milliseconds: 300),
                      curve: Curves.easeOut,
                    );
                  });
                },
              ),
              FlatButton(
                child: Text('deu bom'),
                onPressed: () {
                  setState(() {
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
