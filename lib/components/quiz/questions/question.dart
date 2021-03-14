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
          style: Theme.of(context).textTheme.subtitle1,
        ),
        SizedBox(height: 16),
        Text(
          question,
          style: Theme.of(context).textTheme.subtitle2,
        ),
        // !
      ],
    );
  }
}
