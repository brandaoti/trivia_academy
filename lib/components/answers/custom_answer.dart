import 'package:flutter/material.dart';

class CustomAnswer extends StatelessWidget {
  final String title;

  const CustomAnswer({Key key, this.title = ''}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 23, horizontal: 16),
      margin: EdgeInsets.fromLTRB(32, 10, 32, 10),
      decoration: BoxDecoration(
        //color: Colors.red,
        borderRadius: BorderRadius.circular(8.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.15),
            blurRadius: 2,
            spreadRadius: 1,
            offset: Offset(1, 2),
          ),
        ],
      ),
      child: RadioListTile(
        title: Text(title),
        value: null,
        groupValue: null,
        onChanged: null,
      ),
    );
  }
}
