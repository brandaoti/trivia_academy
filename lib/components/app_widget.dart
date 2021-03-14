import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:trivia_academy/components/colors/app_colors.dart';

import '../routes/app_routes.dart';
import '../screens/home_screen.dart';
import '../screens/question_screen.dart';
import 'app_style.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //
    SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown],
    );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Quiz',
      //

      theme: ThemeData(
        primaryColor: AppColors.primaryColor,
        accentColor: AppColors.accentColor,
        fontFamily: 'Montserrat',
        textTheme: TextTheme(
          headline1: Headline,
          headline2: HeadlineResult,
          subtitle1: SubtitleQuestionNumber,
          subtitle2: SubtitleQuestion,
          bodyText1: BodyAnswer,
          bodyText2: BodyScore,
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
