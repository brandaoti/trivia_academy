import 'package:flutter/material.dart';
import 'package:trivia_academy/components/colors/app_colors.dart';

const LargeTextSize = 32.0;
const MediumTextSize = 20.0;

const Subtitle1TextSize = 12.0;
const Subtitle2TextSize = 16.0;
const BodyTextSize = 14.0;

const String FontNameDefault = 'Montserrat';

const Headline4TextStyle = TextStyle(
  fontFamily: FontNameDefault,
  fontWeight: FontWeight.w800,
  fontSize: MediumTextSize,
  color: AppColors.headlineColor,
);

const Subtitle1TextStyle = TextStyle(
  fontFamily: FontNameDefault,
  fontWeight: FontWeight.w400,
  fontSize: Subtitle1TextSize,
  color: AppColors.question,
);

const Subtile2TextStyle = TextStyle(
  fontFamily: FontNameDefault,
  fontWeight: FontWeight.w400,
  fontSize: Subtitle2TextSize,
  color: AppColors.question,
);

const Body1TextStyle = TextStyle(
  fontFamily: FontNameDefault,
  fontWeight: FontWeight.w400,
  fontSize: BodyTextSize,
  color: Colors.red,
);
