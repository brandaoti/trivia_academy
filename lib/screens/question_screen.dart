import 'package:flutter/material.dart';
import 'package:trivia_academy/components/answers/answer.dart';
import 'package:trivia_academy/components/answers/custom_answer.dart';

// Tela de perguntas
class QuestionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Perguntas'),
        centerTitle: true,
        // backgroundColor: Color(0xFF374952),
      ),

      // body

      body: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
            margin: EdgeInsets.fromLTRB(32, 56, 32, 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Pergunta 1',
                  style: TextStyle(fontSize: 12, color: Color(0xFF4C4C4C)),
                ),
                SizedBox(height: 10),
                Text(
                  'lorem ipsum dolor sit amet consectetur adipiscing elit?',
                  style: TextStyle(fontSize: 16, color: Color(0xFF4C4C4C)),
                ),
              ],
            ),
          ),

          // Instanciando lista com respostas.
          Answer(),
        ],
      ),
    );
  }
}
