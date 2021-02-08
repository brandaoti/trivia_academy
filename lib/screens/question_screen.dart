import 'package:flutter/material.dart';

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

          // Cria uma lista com a resposta das perguntas
          Expanded(
            child: ListView(
              children: [
                Container(
                  height: 80,
                  margin: EdgeInsets.fromLTRB(32, 10, 32, 10),
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                  color: Colors.red,
                  child: Text('LETRA A'),
                ),
                Container(
                  height: 80,
                  margin: EdgeInsets.fromLTRB(32, 10, 32, 10),
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                  color: Colors.red,
                  child: Text('LETRA B'),
                ),
                Container(
                  height: 80,
                  margin: EdgeInsets.fromLTRB(32, 10, 32, 10),
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                  color: Colors.red,
                  child: Text('LETRA C'),
                ),
                Container(
                  height: 80,
                  margin: EdgeInsets.fromLTRB(32, 10, 32, 10),
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                  color: Colors.red,
                  child: Text('LETRA D'),
                ),
                Container(
                  height: 80,
                  margin: EdgeInsets.fromLTRB(32, 10, 32, 10),
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                  color: Colors.red,
                  child: Text('LETRA E'),
                ),
                Container(
                  height: 80,
                  margin: EdgeInsets.fromLTRB(32, 10, 32, 10),
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                  color: Colors.red,
                  child: Text('LETRA F'),
                ),
                Container(
                  height: 80,
                  margin: EdgeInsets.fromLTRB(32, 10, 32, 10),
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                  color: Colors.red,
                  child: Text('LETRA G'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
