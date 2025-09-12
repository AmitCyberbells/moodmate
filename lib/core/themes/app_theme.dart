import 'package:flutter/material.dart';
import 'package:moodmate/core/constants/colors.dart';
import 'package:moodmate/core/constants/fonts.dart';

class AppTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      primaryColor: Colors.white,
      scaffoldBackgroundColor: Color(0xff1b2020),
      textTheme: TextTheme(
        titleMedium: nunito(fontSize: mediumTitle, fontWeight: FontWeight.w600),
        titleSmall: nunito(fontSize: smallTitle, fontWeight: FontWeight.w600),
        titleLarge: nunito(fontSize: largeTitle, fontWeight: FontWeight.w700),
        bodySmall: nunito(fontSize: smallBody, color: coolGray),
        bodyMedium: nunito(
          fontSize: mediumBody,
          color: charcoalGray,
          fontWeight: FontWeight.w500,
        ),
        bodyLarge: atkinsonHyperlegible(fontSize: largeBody),
      ),
    );
  }
}
