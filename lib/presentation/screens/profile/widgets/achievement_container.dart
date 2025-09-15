import 'package:flutter/material.dart';
import 'package:moodmate/core/constants/colors.dart';
import 'package:moodmate/core/constants/fonts.dart';

class AchievementContainer extends StatelessWidget {
  final String title;
  final String desc;

  const AchievementContainer({
    required this.desc,
    required this.title,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: softWarmWhite.withOpacity(0.21),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            children: [
              Text(
                title,
                style: nunito(
                  fontSize: mediumBody,
                  color: softWarmWhite,
                  fontWeight: FontWeight.w500,
                  decoration: TextDecoration.none,
                ),
              ),
              Image.asset("assets/icons/calender.png", scale: 4),
            ],
          ),

          Text(
            desc,
            style: alegreyaSans(
              fontSize: smallBody,
              color: softWarmWhite,
              fontWeight: FontWeight.w400,
              decoration: TextDecoration.none,
            ),
          ),
        ],
      ),
    );
  }
}
