import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../components/buttons/custom_button.dart';
import '../components/containers/custom_boxshadow.dart';
import '../routes/app_routes.dart';

class ResultScreen extends StatefulWidget {
  //
  final int score;
  final int totalQuestion;

  const ResultScreen({
    Key key,
    @required this.score,
    @required this.totalQuestion,
  }) : super(key: key);

  @override
  _ResultScreenState createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  // Reiniciar
  void _onPlayAgain() {
    setState(() {
      Navigator.of(context).pushReplacementNamed(
        AppRoutes.HOME_SCREEN,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //
      body: Column(
        children: [
          Expanded(
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 160),
                widget.score == 0
                    ? Text(
                        'VOCÊ ERROU TODAS',
                        style: TextStyle(
                          color: Color(0xFF263238),
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      )
                    : Text(
                        'VOCÊ ACERTOU',
                        style: TextStyle(
                          color: Color(0xFF263238),
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),

                SizedBox(height: 60),

                //
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: [
                    Text(
                      "${widget.score}",
                      style: TextStyle(
                        color: Color(0xFFDA0175),
                        fontSize: 80,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    //
                    Text(
                      '/ ${widget.totalQuestion}',
                      style: TextStyle(
                        color: Color(0xFF263238),
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          // Spacer(),
          // !
          CustomContainerBoxShadow(
              child: Center(
            child: CustomButton(
              borderRadius: BorderRadius.circular(20),
              name: 'Jogar novamente',
              onPressed: () => _onPlayAgain(),
            ),
          ))
        ],
      ),
    );
  }
}
