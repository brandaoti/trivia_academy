import 'package:flutter/material.dart';
import 'package:trivia_academy/components/buttons/custom_button.dart';

import 'question_screen.dart';

class HomeScreen extends StatelessWidget {
  //
  @override
  Widget build(BuildContext context) {
    // ! Função para navegação de tela
    void _questionScreen() {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (ctx) => QuestionScreen(),
        ),
      );
    }

    //
    return Scaffold(
      //
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 167.0),

            Image(
              image: AssetImage('assets/logo.png'),
            ),

            SizedBox(height: 24.0),
            Text(
              'Trivia \n Academy',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xFF374952),
                fontSize: 32.0,
                fontWeight: FontWeight.w800,
              ),
            ),

            //
            SizedBox(height: 88.0),

            //
            CustomButton(
              borderRadius: BorderRadius.circular(20),
              name: 'Começar',
              onPressed: _questionScreen,
            ),
          ],
        ),
      ),
    );
  }
}
