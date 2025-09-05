import 'package:flutter/material.dart';
import 'package:moodmate/core/constants/colors.dart';

class MoodWidget extends StatelessWidget {
  final String title;
  final String img;
  final Color bgColor;
  const MoodWidget({
    required this.img,
    required this.title,
    required this.bgColor,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            color: bgColor,
            borderRadius: BorderRadius.circular(100),
          ),
          child: Image.asset(img, scale: 1.5),
        ),
        SizedBox(height: 5),
        Text(
          title,
          style: Theme.of(context).textTheme.bodySmall?.copyWith(
            color: softWarmWhite,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}
