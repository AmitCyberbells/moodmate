import 'package:flutter/material.dart';
import 'package:moodmate/core/constants/colors.dart';

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
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                    color: softWarmWhite,
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
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
              fontWeight: FontWeight.w400,
              color: softWarmWhite,
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}
