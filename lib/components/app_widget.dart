import 'package:flutter/material.dart';

import '../screens/home_screen.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(), // ! Colocar a cor white
      home: HomeScreen(),
    );
  }
}
