import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:moodmate/core/constants/colors.dart';

class AppTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      primaryColor: Colors.white,
      scaffoldBackgroundColor: Color(0xff1b2020),
      textTheme: TextTheme(
        titleMedium: GoogleFonts.nunito(
          fontSize: 26,
          color: charcoalGray,
          fontWeight: FontWeight.w600,
        ),
        titleLarge: GoogleFonts.karantina(
          fontSize: 96,
          color: softWarmWhite,
          fontWeight: FontWeight.w500,
        ),
        bodySmall: GoogleFonts.alegreyaSans(fontSize: 14, color: coolGray),
        bodyMedium: GoogleFonts.alegreyaSans(fontSize: 16, color: charcoalGray),
        bodyLarge: GoogleFonts.alegreyaSans(fontSize: 22, color: charcoalGray),
      ),
    );
  }
}
