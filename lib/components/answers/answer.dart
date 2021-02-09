import 'package:flutter/material.dart';
import 'package:trivia_academy/components/answers/custom_answer.dart';

class Answer extends StatefulWidget {
  //
  @override
  _AnswerState createState() => _AnswerState();
}

class _AnswerState extends State<Answer> {
  int answer = 0;

  @override
  Widget build(BuildContext context) {
    //

    return Expanded(
      child: ListView(
        children: [
          CustomAnswer(
              value: 1,
              title: 'lorem ipsum dolor sit amet consectetur adipiscing elit?',
              groupValue: answer,
              onChanged: (value) {
                setState(() {
                  answer = value;
                });
              }),
          CustomAnswer(
              value: 2,
              title: 'lorem ipsum dolor sit amet consectetur adipiscing elit?',
              groupValue: answer,
              onChanged: (value) {
                setState(() {
                  answer = value;
                });
              }),
          CustomAnswer(
            value: 3,
            title: 'lorem ipsum dolor sit amet consectetur adipiscing elit?',
            groupValue: answer,
            onChanged: (value) {
              setState(() {
                answer = value;
              });
            },
          ),
          CustomAnswer(
            value: 4,
            title: 'lorem ipsum dolor sit amet consectetur adipiscing elit?',
            groupValue: answer,
            onChanged: (value) {
              setState(() {
                answer = value;
              });
            },
          ),
        ],
      ),
    );
  }
}
