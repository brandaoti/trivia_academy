import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 23, horizontal: 16),
            margin: EdgeInsets.fromLTRB(32, 10, 32, 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              color: Colors.red,
            ),
            child:
                Text('lorem ipsum dolor sit amet consectetur adipiscing elit?'),
          ),
        ],
      ),
    );
  }
}
