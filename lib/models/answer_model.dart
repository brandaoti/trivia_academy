import 'package:flutter/cupertino.dart';

class AnswerModel {
  final String title;
  final int value;
  final int groupValue;

  //
  AnswerModel({
    @required this.title,
    @required this.value,
    @required this.groupValue,
  });

  //
  AnswerModel copyWith({String title, int value, int groupValue}) =>
      AnswerModel(
        title: title ?? this.title,
        value: value ?? this.value,
        groupValue: groupValue ?? this.groupValue,
      );
}
