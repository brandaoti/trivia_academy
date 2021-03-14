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
  // Função para reiniciar
  void _onPlayAgain() {
    setState(() {
      Navigator.of(context).pushReplacementNamed(
        AppRoutes.HOME_SCREEN,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;

    return Scaffold(
      //
      body: Column(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: mediaQuery.height * (160 / 568)),

              // Ternario para verificar os pontos
              widget.score == 0
                  ? Text(
                      'VOCÊ ERROU TODAS',
                      style: Theme.of(context).textTheme.headline2,
                    )
                  : Text(
                      'VOCÊ ACERTOU',
                      style: Theme.of(context).textTheme.headline2,
                    ),

              SizedBox(height: mediaQuery.height * (60 / 568)),

              // Colocando score
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.baseline,
                textBaseline: TextBaseline.alphabetic,
                children: [
                  Text(
                    "${widget.score}",
                    style: Theme.of(context).textTheme.bodyText2,
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

          Spacer(),

          // Instanciando BoxShadow com botão customizado
          CustomContainerBoxShadow(
            child: Center(
              child: CustomButton(
                name: 'Jogar novamente',
                borderRadius: BorderRadius.circular(20),
                onPressed: () => _onPlayAgain(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
