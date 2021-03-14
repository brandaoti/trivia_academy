import 'package:flutter/material.dart';

// Customizando layout para inserir respostas
class CustomAnswer extends StatelessWidget {
  final String title;
  final int value;
  final int groupValue;
  final Function onChanged;
  final EdgeInsetsGeometry margin;

  //
  const CustomAnswer({
    Key key,
    @required this.title,
    @required this.value,
    @required this.groupValue,
    @required this.onChanged,
    this.margin = const EdgeInsets.fromLTRB(32, 10, 32, 10),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 14, horizontal: 16),
      margin: margin,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            blurRadius: 3,
            spreadRadius: 1,
            offset: Offset(1, 3),
          ),
        ],
      ),
      child: RadioListTile(
        title: Text(title, style: Theme.of(context).textTheme.bodyText1),
        value: value,
        groupValue: groupValue,
        onChanged: onChanged,
      ),
    );
  }
}
