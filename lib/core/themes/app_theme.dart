import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:moodmate/core/constants/colors.dart';

class AppTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      primaryColor: Colors.white,
      scaffoldBackgroundColor: Color(0xff1b2020),
      textTheme: TextTheme(
        titleMedium: GoogleFonts.alegreyaSans(
          fontSize: 30,
          color: softWarmWhite,
        ),
        titleLarge: GoogleFonts.karantina(
          fontSize: 96,
          color: softWarmWhite,
          fontWeight: FontWeight.w500,
        ),
        bodySmall: GoogleFonts.alegreyaSans(fontSize: 14, color: softWarmWhite),
        bodyMedium: GoogleFonts.alegreyaSans(
          fontSize: 18,
          color: softWarmWhite,
        ),
        bodyLarge: GoogleFonts.alegreyaSans(fontSize: 22, color: softWarmWhite),
      ),
    );
  }
}
