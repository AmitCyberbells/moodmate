import 'package:flutter/material.dart';
import 'package:moodmate/core/constants/colors.dart';
import 'package:moodmate/core/constants/fonts.dart';

class CaretoolsContainer extends StatelessWidget {
  final String title;
  final String desc;
  const CaretoolsContainer({
    required this.desc,
    required this.title,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 125,
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 20),
      decoration: BoxDecoration(
        color: softWarmWhite.withOpacity(0.22),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: nunito(
              fontSize: mediumBody,
              color: softWarmWhite,
              fontWeight: FontWeight.w600,
              decoration: TextDecoration.none,
            ),
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
