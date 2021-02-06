import 'package:flutter/material.dart';

import '../routes/app_routes.dart';
import '../screens/home_screen.dart';
import '../screens/question_screen.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),

      // ! Setando rotas
      routes: {
        AppRoutes.HOME_SCREEN: (ctx) => HomeScreen(),
        AppRoutes.QUESTION_SCREEN: (ctx) => QuestionScreen(),
      },
    );
  }
}
