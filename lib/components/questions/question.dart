import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionIndex;
  final String question;

  const Question({
    Key key,
    this.questionIndex,
    this.question,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          questionIndex,
          style: TextStyle(fontSize: 12, color: Color(0xFF4C4C4C)),
        ),
        SizedBox(height: 10),
        Text(
          question,
          style: TextStyle(
            fontSize: 16,
            color: Color(0xFF4C4C4C),
          ),
        ),
        // !
      ],
    );
  }
}
