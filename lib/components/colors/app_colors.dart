import 'dart:ui';

import 'package:flutter/material.dart';

class AppColors {
  // ! Define as cores por nomes
  static const Color _pink = Color(0xFFDA0175);
  static const Color _white = Color(0xFFF7F7F7);
  static const Color _darkGreyBlue = Color(0xFF374952);

  // ! Define as cores por utilização para mudar rapidamente quando precisar

  // Todo - Layout -
  static const primaryColor = _darkGreyBlue;
  static const accentColor = _pink;
  static const appBarColor = _darkGreyBlue;

  // Todo - BOTÕES -
  static const btnPrimary = _pink;
  static const btnOnPrimary = _white;

  // Todo - TEXTOS -
  static const headlineColor = _darkGreyBlue;
  static const textColor = _darkGreyBlue;
  static const textScore = [_pink, _darkGreyBlue];
}
