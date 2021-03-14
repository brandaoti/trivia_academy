import 'package:flutter/material.dart';
import '../components/buttons/custom_button.dart';

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
              style: Theme.of(context).textTheme.headline4,
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
