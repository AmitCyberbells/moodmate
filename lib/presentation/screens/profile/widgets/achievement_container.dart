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
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width / 2.4,
      height: 125,
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 20),
      decoration: BoxDecoration(
        color: softWarmWhite.withOpacity(0.21),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            children: [
              SizedBox(
                width: (size.width / 2.2) / 2,

                child: Text(
                  title,
                  style: nunito(
                    fontSize: mediumBody,
                    color: softWarmWhite,
                    fontWeight: FontWeight.w500,
                    decoration: TextDecoration.none,
                  ),
                ),
              ),
              Icon(
                Icons.calendar_month_outlined,
                color: softWarmWhite,
                size: 20,
              ),
            ],
          ),
          SizedBox(height: 5),
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
