import 'package:flutter/material.dart';
import 'package:moodmate/core/constants/colors.dart';
import 'package:moodmate/core/constants/fonts.dart';

class AppTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      primaryColor: Colors.white,
      scaffoldBackgroundColor: Color(0xff1b2020),
      textTheme: TextTheme(
        titleMedium: nunito(
          fontSize: smallTitle,
          color: charcoalGray,
          fontWeight: FontWeight.w600,
        ),
        titleLarge: karantina(
          fontSize: largeTitle,
          color: softWarmWhite,
          fontWeight: FontWeight.w500,
        ),
        bodySmall: alegreyaSans(fontSize: smallBody, color: coolGray),
        bodyMedium: inter(
          fontSize: mediumBody,
          color: charcoalGray,
          fontWeight: FontWeight.w500,
        ),
        bodyLarge: alegreyaSans(fontSize: largeBody, color: charcoalGray),
      ),
    );
  }
}
