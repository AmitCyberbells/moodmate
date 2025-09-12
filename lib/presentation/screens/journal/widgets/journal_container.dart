import 'package:flutter/material.dart';
import 'package:moodmate/core/constants/colors.dart';
import 'package:moodmate/core/constants/fonts.dart';
import 'package:moodmate/presentation/screens/journal/widgets/category_list_item.dart';
import 'package:moodmate/presentation/widgets/border_card.dart';

class JournalContainer extends StatelessWidget {
  final String title;
  final String day;
  final String desc;
  final List<String> tags;
  const JournalContainer({
    required this.day,
    required this.desc,
    required this.tags,
    required this.title,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BorderCard(
      widget: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: nunito(
              decoration: TextDecoration.none,
              fontSize: extraLargeBody,
              color: softWarmWhite,
              fontWeight: FontWeight.w600,
            ),
          ),
          Text(
            day,
            style: alegreyaSans(
              decoration: TextDecoration.none,
              fontSize: smallBody,
              color: daysTextColor,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: 10),
          Text(
            desc,
            style: alegreyaSans(
              decoration: TextDecoration.none,
              fontSize: smallBody,
              color: softWarmWhite,
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(height: 10),
          SizedBox(
            height: 30,
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: tags.length,
              itemBuilder: (context, index) {
                return CategoryListItem(title: tags[index]);
              },
            ),
          ),
        ],
      ),
    );
  }
}
