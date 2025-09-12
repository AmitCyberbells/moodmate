import 'package:flutter/material.dart';
import 'package:moodmate/core/constants/colors.dart';
import 'package:moodmate/core/constants/fonts.dart';

class QuickReliefListitem extends StatelessWidget {
  final String title;
  final String timeduration;
  const QuickReliefListitem({
    required this.timeduration,
    required this.title,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      margin: EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        color: softWarmWhite.withOpacity(0.22),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
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
              Text(
                timeduration,
                style: alegreyaSans(
                  fontSize: smallBody,
                  color: softWarmWhite,
                  fontWeight: FontWeight.w400,
                  decoration: TextDecoration.none,
                ),
              ),
            ],
          ),
          Material(
            color: Colors.transparent,
            child: Checkbox(
              checkColor: charcoalGray,
              value: false,
              side: BorderSide(color: softWarmWhite, width: 1),
              activeColor: softWarmWhite,
              onChanged: (value) {},
            ),
          ),
        ],
      ),
    );
  }
}
