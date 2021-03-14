import 'package:flutter/material.dart';
import 'package:trivia_academy/components/colors/app_colors.dart';

import '../routes/app_routes.dart';
import '../screens/home_screen.dart';
import '../screens/question_screen.dart';
import 'app_style.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Quiz',
      //

      theme: ThemeData(
        primaryColor: AppColors.primaryColor,
        accentColor: AppColors.accentColor,
        fontFamily: 'Montserrat',
        textTheme: TextTheme(
          headline4: Headline4TextStyle,
          subtitle1: Subtitle1TextStyle,
          subtitle2: Subtitle2TextStyle,
          bodyText1: Body1TextStyle,
        ),
      ),

      // ! Setando rotas
      routes: {
        AppRoutes.HOME_SCREEN: (ctx) => HomeScreen(),
        AppRoutes.QUESTION_SCREEN: (ctx) => QuestionScreen(),
      },
    );
  }
}
