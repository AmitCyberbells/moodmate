import 'package:flutter/material.dart';
import 'package:moodmate/core/constants/colors.dart';
import 'package:moodmate/core/constants/fonts.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final Color bgColor;
  final Color textColor;
  final VoidCallback onPressed;
  final double width;
  final Color? borderColor;
  const CustomButton({
    this.borderColor,
    required this.bgColor,
    required this.onPressed,
    required this.textColor,
    required this.title,
    this.width = 110,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(40),
          border: Border.all(width: 1, color: borderColor ?? softWarmWhite),
        ),
        child: Container(
          child: Container(
            alignment: Alignment.center,
            width: width,
            margin: EdgeInsets.all(5),
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            decoration: BoxDecoration(
              color: bgColor,
              borderRadius: BorderRadius.circular(40),
              border: Border.all(width: 1, color: softWarmWhite),
            ),
            child: Text(
              title,
              style: atkinsonHyperlegible(
                decoration: TextDecoration.none,
                fontSize: mediumBody,
                color: textColor,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
