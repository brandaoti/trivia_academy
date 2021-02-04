import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  //
  @override
  Widget build(BuildContext context) {
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
            TextButton(
              child: Text('Começar'),
              style: TextButton.styleFrom(
                padding: EdgeInsets.fromLTRB(60, 11, 60, 11),
                primary: Color(0xFFF7F7F7),
                backgroundColor: Color(0xFFDA0175),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
              ),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
