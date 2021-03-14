import 'package:flutter/material.dart';
import '../components/buttons/custom_button.dart';

import 'question_screen.dart';

class HomeScreen extends StatelessWidget {
  //
  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;

    // ! Função para navegação de tela
    void _questionScreen() {
      Navigator.pushReplacement(
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
            SizedBox(height: mediaQuery.height * (167.0 / 568)),

            // Add logo
            Image(
              image: AssetImage('assets/logo.png'),
            ),

            SizedBox(height: mediaQuery.height * (24.0 / 568)),
            Text(
              'Trivia \n Academy',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headline1,
            ),

            //
            SizedBox(height: mediaQuery.height * (88.0 / 568)),

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
