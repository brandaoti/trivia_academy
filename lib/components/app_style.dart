import 'package:flutter/material.dart';
import 'package:trivia_academy/components/colors/app_colors.dart';

const LargeTextSize = 32.0;
const MediumTextSize = 20.0;

const QuestionNumberTextSize = 12.0;
const QuestionTextSize = 16.0;
const BodyTextSize = 14.0;

const String FontNameDefault = 'Montserrat';

const Headline = TextStyle(
  fontFamily: FontNameDefault,
  fontWeight: FontWeight.w800,
  fontSize: LargeTextSize,
  color: AppColors.headlineColor,
);

const HeadlineResult = TextStyle(
  fontFamily: FontNameDefault,
  fontWeight: FontWeight.w600,
  fontSize: MediumTextSize,
  color: AppColors.textColor,
);

const SubtitleQuestionNumber = TextStyle(
  fontFamily: FontNameDefault,
  fontWeight: FontWeight.w400,
  fontSize: QuestionNumberTextSize,
  color: AppColors.textColor,
);

const SubtitleQuestion = TextStyle(
  fontFamily: FontNameDefault,
  fontWeight: FontWeight.w400,
  fontSize: QuestionTextSize,
  color: AppColors.textColor,
);

const BodyAnswer = TextStyle(
  fontFamily: FontNameDefault,
  fontWeight: FontWeight.w400,
  fontSize: BodyTextSize,
  color: AppColors.textColor,
);

const BodyScore = TextStyle(
  fontFamily: FontNameDefault,
  fontWeight: FontWeight.w800,
  fontSize: 80,
  color: AppColors.textScore1,
);
