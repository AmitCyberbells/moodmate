import 'package:flutter/material.dart';
import 'package:moodmate/core/constants/colors.dart';
import 'package:moodmate/core/constants/fonts.dart';
import 'package:moodmate/presentation/screens/community/widgets/message_container.dart';
import 'package:moodmate/presentation/screens/journal/widgets/category_list_item.dart';
import 'package:moodmate/presentation/widgets/bg_card.dart';
import 'package:moodmate/presentation/widgets/custom_button.dart';

class CommunityPage extends StatelessWidget {
  const CommunityPage({super.key});

  @override
  Widget build(BuildContext context) {
    List data = ["All", "Recent", "Emotional", "Personal", "Gratitude"];
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.only(top: 20, left: 20, right: 20),
      child: ListView(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Community",
                    style: nunito(
                      fontSize: smallTitle,
                      color: softWarmWhite,
                      fontWeight: FontWeight.w600,
                      decoration: TextDecoration.none,
                    ),
                  ),
                  Text(
                    "• Safe space • Moderated \n• Anonymous option available",
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
                width: 105,
                height: 50,
                padding: EdgeInsets.all(3),
                decoration: BoxDecoration(
                  color: profileImageContainer,
                  borderRadius: BorderRadius.circular(40),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 45,
                      width: 45,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: serachContainer,
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: Icon(
                        Icons.search_rounded,
                        size: 18,
                        color: softWarmWhite,
                      ),
                    ),
                    CircleAvatar(
                      child: Image.asset(
                        "assets/images/profile_pic.png",
                        width: 45,
                        height: 45,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 30),
          SizedBox(
            height: 40,
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: data.length,
              itemBuilder: (context, index) {
                return CategoryListItem(title: data[index]);
              },
            ),
          ),
          SizedBox(height: 30),
          BgCard(
            bgcolor: softWarmWhite.withOpacity(0.15),
            widget: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Trending Topics",
                  style: nunito(
                    fontSize: extraLargeBody,
                    color: softWarmWhite,
                    fontWeight: FontWeight.w600,
                    decoration: TextDecoration.none,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  "#2AManxietythoughts",
                  style: alegreyaSans(
                    fontSize: smallBody,
                    color: softWarmWhite,
                    fontWeight: FontWeight.w500,
                    decoration: TextDecoration.none,
                  ),
                  textAlign: TextAlign.justify,
                ),
                Text(
                  "#selfcaresunday",
                  style: alegreyaSans(
                    fontSize: smallBody,
                    color: softWarmWhite,
                    fontWeight: FontWeight.w500,
                    decoration: TextDecoration.none,
                  ),
                  textAlign: TextAlign.justify,
                ),
                Text(
                  "#therapysessiontips",
                  style: alegreyaSans(
                    fontSize: smallBody,
                    color: softWarmWhite,
                    fontWeight: FontWeight.w500,
                    decoration: TextDecoration.none,
                  ),
                  textAlign: TextAlign.justify,
                ),
                Text(
                  "#dealingwithrejectionsensitivity",
                  style: alegreyaSans(
                    fontSize: smallBody,
                    color: softWarmWhite,
                    fontWeight: FontWeight.w500,
                    decoration: TextDecoration.none,
                  ),
                  textAlign: TextAlign.justify,
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          MessageContainer(
            desc:
                "Anyone else feel like they're overthinking everything at 2 AM? Just me? 😅 Found that doing the 4-7-8 breathing actually helps though!",
            shortName: "AT",
            tagType: "Anxiety",
            time: "3h",
            totalComments: 31,
            totalLikes: 47,
            userName: "Anonymous",
          ),

          SizedBox(height: 20),
          MessageContainer(
            desc:
                "Reminder that you don't have to be productive 24/7. Taking a mental health day is not being lazy, it's being human 💜",
            shortName: "WI",
            tagType: "Work",
            time: "5h",
            totalComments: 31,
            totalLikes: 47,
            userName: "Work Life Balance",
          ),
          SizedBox(height: 20),
          MessageContainer(
            desc:
                "When people ask me how I'm doing: I'm fine 😊  What I really mean: *internal screaming* 😱  But hey, at least we're all screaming together! 🤝",
            shortName: "ML",
            tagType: "Just Vibes",
            time: "8h",
            totalComments: 31,
            totalLikes: 47,
            userName: "MemeLord2024",
          ),
          SizedBox(height: 20),
          Align(
            alignment: Alignment.centerRight,
            child: CustomButton(
              onPressed: () {},
              width: 180,
              textColor: charcoalGray,
              bgColor: softWarmWhite,
              title: "Add you Thoughts",
            ),
          ),
          SizedBox(height: 30),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: lightContainerColor,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "💜 ",
                  style: alegreyaSans(
                    fontSize: smallBody,
                    color: charcoalGray,
                    fontWeight: FontWeight.w400,
                    decoration: TextDecoration.none,
                  ),
                ),
                SizedBox(width: 3),
                SizedBox(
                  width: size.width / 1.3,
                  child: Text(
                    "Remember: Be kind, be supportive, be human. We're all in this together.",
                    style: alegreyaSans(
                      fontSize: smallBody,
                      color: charcoalGray,
                      fontWeight: FontWeight.w400,
                      decoration: TextDecoration.none,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 120),
        ],
      ),
    );
  }
}
