import 'package:flutter/material.dart';
import 'package:moodmate/core/constants/colors.dart';

class IconContainer extends StatelessWidget {
  final String img;
  const IconContainer({required this.img, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(100),
        border: Border.all(width: 1, color: softWarmWhite),
      ),
      child: Image.asset(img, width: 25, height: 25),
    );
  }
}
