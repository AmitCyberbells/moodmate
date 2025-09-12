import 'package:flutter/material.dart';
import 'package:moodmate/core/constants/colors.dart';
import 'package:moodmate/core/constants/fonts.dart';

class TextContainer extends StatelessWidget {
  final String title;
  const TextContainer({required this.title, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(3),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        border: Border.all(width: 1, color: softWarmWhite),
      ),
      child: Text(
        title,
        style: alegreyaSans(
          fontSize: extraSmallBody,
          color: softWarmWhite,
          fontWeight: FontWeight.w500,
          decoration: TextDecoration.none,
        ),
      ),
    );
  }
}
