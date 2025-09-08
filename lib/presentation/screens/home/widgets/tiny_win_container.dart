import 'package:flutter/material.dart';
import 'package:moodmate/core/constants/colors.dart';

class TinyWinContainer extends StatelessWidget {
  final String title;
  final String icon;
  final Color bgColor;
  const TinyWinContainer({
    required this.bgColor,
    required this.icon,
    required this.title,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: bgColor,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(icon, style: Theme.of(context).textTheme.bodySmall),
          SizedBox(width: 3),
          Text(
            title,
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
              fontWeight: FontWeight.w400,
              fontSize: 12,
              color: softWarmWhite,
            ),
          ),
        ],
      ),
    );
  }
}
