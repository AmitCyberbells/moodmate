import 'package:flutter/material.dart';
import 'package:moodmate/core/constants/colors.dart';
import 'package:moodmate/core/constants/fonts.dart';
import 'package:moodmate/presentation/widgets/border_card.dart';

class MessageContainer extends StatelessWidget {
  final String userName;
  final String shortName;
  final String time;
  final String tagType;
  final String desc;
  final int totalLikes;
  final int totalComments;
  const MessageContainer({
    required this.desc,
    required this.shortName,
    required this.tagType,
    required this.time,
    required this.totalComments,
    required this.totalLikes,
    required this.userName,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BorderCard(
      widget: Column(
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 25,
                backgroundColor: softWarmWhite,
                child: Text(
                  shortName,
                  style: nunito(
                    fontSize: mediumBody,
                    color: idIconTextColor,
                    fontWeight: FontWeight.w600,
                    decoration: TextDecoration.none,
                  ),
                ),
              ),
              SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        userName,
                        style: nunito(
                          fontSize: extraLargeBody,
                          color: softWarmWhite,
                          fontWeight: FontWeight.w600,
                          decoration: TextDecoration.none,
                        ),
                      ),
                      SizedBox(width: 30),
                      Text(
                        time,
                        style: nunito(
                          fontSize: smallBody,
                          color: softWarmWhite,
                          fontWeight: FontWeight.w600,
                          decoration: TextDecoration.none,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(width: 1, color: softWarmWhite),
                    ),
                    child: Text(
                      tagType,
                      style: alegreyaSans(
                        fontSize: extraSmallBody,
                        color: softWarmWhite,
                        fontWeight: FontWeight.w500,
                        decoration: TextDecoration.none,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 20),
          Text(
            desc,
            style: alegreyaSans(
              fontSize: smallBody,
              color: softWarmWhite,
              fontWeight: FontWeight.w500,
              decoration: TextDecoration.none,
            ),
            textAlign: TextAlign.justify,
          ),
          SizedBox(height: 20),
          Row(
            children: [
              Row(
                children: [
                  Icon(
                    Icons.favorite_border_outlined,
                    size: 25,
                    color: softWarmWhite,
                  ),
                  SizedBox(width: 3),
                  Text(
                    totalLikes.toString(),
                    style: nunito(
                      fontSize: extraSmallBody,
                      color: softWarmWhite,
                      fontWeight: FontWeight.w500,
                      decoration: TextDecoration.none,
                    ),
                  ),
                ],
              ),
              const SizedBox(width: 10),
              Row(
                children: [
                  Icon(Icons.comment_outlined, size: 25, color: softWarmWhite),
                  SizedBox(width: 3),
                  Text(
                    totalComments.toString(),
                    style: nunito(
                      fontSize: extraSmallBody,
                      color: softWarmWhite,
                      fontWeight: FontWeight.w500,
                      decoration: TextDecoration.none,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
