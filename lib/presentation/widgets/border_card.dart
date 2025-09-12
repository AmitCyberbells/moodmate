import 'package:flutter/material.dart';
import 'package:moodmate/core/constants/colors.dart';

class BorderCard extends StatelessWidget {
  final Color? bgColor;
  final Widget widget;
  const BorderCard({this.bgColor, required this.widget, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(width: 1, color: softWarmWhite),
      ),
      child: widget,
    );
  }
}
