import 'package:flutter/material.dart';
import 'package:moodmate/core/constants/colors.dart';
import 'package:moodmate/core/constants/fonts.dart';

class YourJourneyContainer extends StatelessWidget {
  final String img;
  final int days;
  final String title;
  const YourJourneyContainer({
    required this.days,
    required this.img,
    required this.title,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      height: 100,
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 20),
      margin: EdgeInsets.only(right: 10),
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
              Image.asset(img, scale: 4),
              Text(
                days.toString(),
                style: nunito(
                  fontSize: extraLargeBody,
                  color: softWarmWhite,
                  fontWeight: FontWeight.w700,
                  decoration: TextDecoration.none,
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Text(
            title,
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
