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

            // TODO, retirar o container apos criar layout
            ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: Container(
                color: Colors.white,
                child: Image(
                  image: AssetImage('assets/logo.png'),
                  // color: Colors.white,
                ),
              ),
            ),

            SizedBox(height: 24.0),
            Text('Trivia Academy'),

            SizedBox(height: 88.0),
            TextButton(
              child: Text(
                'Começar',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 14.0,
                ),
              ),
              style: TextButton.styleFrom(
                primary: Color(0xFFF7F7F7),
                backgroundColor: Color(0xFFDA0175),
                padding: EdgeInsets.fromLTRB(60, 11, 60, 11),
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
