import 'package:flutter/material.dart';
import 'package:moodmate/core/constants/colors.dart';

class YourJourneyContainer extends StatelessWidget {
  final IconData icon;
  final int days;
  final String title;
  const YourJourneyContainer({
    required this.days,
    required this.icon,
    required this.title,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 90,
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 20),
      decoration: BoxDecoration(
        color: softWarmWhite.withOpacity(0.21),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(icon, color: softWarmWhite, size: 20),
              Text(
                days.toString(),
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  fontWeight: FontWeight.w600,
                  color: softWarmWhite,
                ),
              ),
            ],
          ),
          SizedBox(height: 5),
          Text(
            title,
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
