import 'package:flutter/material.dart';
import 'package:moodmate/core/constants/colors.dart';
import 'package:moodmate/core/constants/fonts.dart';

// ignore: must_be_immutable
class CategoryListItem extends StatelessWidget {
  String title;
  CategoryListItem({required this.title, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.only(right: 10),
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: BoxDecoration(
        color: categoryListContainer,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(
        title,
        style: alegreyaSans(
          decoration: TextDecoration.none,
          fontSize: smallBody,
          color: softWarmWhite,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}
