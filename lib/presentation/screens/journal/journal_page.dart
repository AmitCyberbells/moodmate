import 'package:flutter/material.dart';
import 'package:moodmate/core/constants/colors.dart';
import 'package:moodmate/core/constants/fonts.dart';
import 'package:moodmate/presentation/screens/journal/widgets/journal_container.dart';
import 'package:moodmate/presentation/widgets/bg_card.dart';
import 'package:moodmate/presentation/screens/journal/widgets/category_list_item.dart';
import 'package:moodmate/presentation/widgets/custom_button.dart';

class JournalPage extends StatelessWidget {
  const JournalPage({super.key});

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
                    "Journal",
                    style: nunito(
                      fontSize: smallTitle,
                      color: softWarmWhite,
                      fontWeight: FontWeight.w600,
                      decoration: TextDecoration.none,
                    ),
                  ),
                  Text(
                    "Your feelings are valid \nand important.",
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
                      child: Image.asset(
                        "assets/icons/search_Icon.png",
                        scale: 4,
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
          BgCard(
            bgcolor: softWarmWhite.withOpacity(0.22),
            widget: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Today’s prompt",
                  style: nunito(
                    decoration: TextDecoration.none,
                    fontSize: extraLargeBody,
                    color: softWarmWhite,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  "What’s one thing you learned about yourself this week?",
                  style: nunito(
                    decoration: TextDecoration.none,
                    fontSize: mediumBody,
                    color: softWarmWhite,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 20),
                Align(
                  alignment: Alignment.centerLeft,
                  child: CustomButton(
                    onPressed: () {},
                    width: 180,
                    textColor: charcoalGray,
                    bgColor: softWarmWhite,
                    title: "Write about this",
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
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
          SizedBox(height: 20),
          JournalContainer(
            day: "Today",
            desc:
                "Had a really food conversation with mom, and my anxiety feels more....",
            tags: ["Gratitude", "Family"],
            title: "Feeling Grateful Today",
          ),

          SizedBox(height: 20),
          JournalContainer(
            day: "Yesterday",
            desc:
                "Had a really food conversation with mom, and my anxiety feels more....",
            tags: ["Stress", "Work"],
            title: "Stressed about work",
          ),

          SizedBox(height: 20),
          JournalContainer(
            day: "Today",
            desc: "🔒 This entry is locked for privacy",
            tags: ["Gratitude", "Family"],
            title: "Private Thoughts",
          ),

          SizedBox(height: 20),
          JournalContainer(
            day: "Today",
            desc:
                "Had a really food conversation with mom, and my anxiety feels more....",
            tags: ["Personal"],
            title: "Feeling Grateful Today",
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
                  "👏 ",
                  style: alegreyaSans(
                    decoration: TextDecoration.none,
                    fontSize: smallBody,
                    color: softWarmWhite,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(width: 3),
                SizedBox(
                  width: size.width / 1.3,
                  child: Text(
                    "Your thoughts matter, start writing to track your mental health journey",
                    style: alegreyaSans(
                      decoration: TextDecoration.none,
                      fontSize: smallBody,
                      color: charcoalGray,
                      fontWeight: FontWeight.w400,
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
