import 'package:flutter/material.dart';
import 'package:moodmate/core/constants/colors.dart';
import 'package:moodmate/core/constants/fonts.dart';
import 'package:moodmate/presentation/screens/caretool/widgets/caretools_container.dart';
import 'package:moodmate/presentation/screens/caretool/widgets/quick_relief_listitem.dart';
import 'package:moodmate/presentation/screens/caretool/widgets/text_container.dart';
import 'package:moodmate/presentation/widgets/bg_card.dart';
import 'package:moodmate/presentation/widgets/border_card.dart';
import 'package:moodmate/presentation/widgets/custom_button.dart';

class CaretoolPage extends StatelessWidget {
  const CaretoolPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final List<Map<String, String>> careTools = [
      {
        "title": "Breathing\nExercises",
        "desc": "Guided breathing to calm your mind",
      },
      {
        "title": "Guided\nMeditation",
        "desc": "5-30 min sessions for mindfulness",
      },
      {"title": "Grounding\nTechniques", "desc": "5-4-3-2-1 method and more"},
      {
        "title": "Mini\nGames",
        "desc": "Bubble pop, pet care, and distractions",
      },
    ];

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
                    "Care Tools",
                    style: nunito(
                      fontSize: smallTitle,
                      color: softWarmWhite,
                      fontWeight: FontWeight.w600,
                      decoration: TextDecoration.none,
                    ),
                  ),
                  Text(
                    "Your mental health toolbox for \nany situation",
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
          BorderCard(
            bgColor: softWarmWhite.withOpacity(.15),
            widget: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Feeling Overwhelmed",
                  style: nunito(
                    fontSize: extraLargeBody,
                    color: softWarmWhite,
                    fontWeight: FontWeight.w600,
                    decoration: TextDecoration.none,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  "Quick relief tools",
                  style: alegreyaSans(
                    fontSize: smallBody,
                    color: softWarmWhite,
                    fontWeight: FontWeight.w500,
                    decoration: TextDecoration.none,
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CustomButton(
                      onPressed: () {},
                      textColor: charcoalGray,
                      bgColor: softWarmWhite,
                      title: "Breathe",
                    ),
                    SizedBox(width: 20),
                    CustomButton(
                      onPressed: () {},
                      width: 120,
                      textColor: charcoalGray,
                      bgColor: softWarmWhite,
                      title: "5-4-3-2-1",
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Text(
            "All Tools",
            style: nunito(
              fontSize: extraLargeBody,
              color: softWarmWhite,
              fontWeight: FontWeight.w600,
              decoration: TextDecoration.none,
            ),
          ),
          SizedBox(height: 10),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: careTools.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 20,
                  crossAxisSpacing: 20,
                  childAspectRatio: 1.2,
                ),
                itemBuilder: (context, index) {
                  final data = careTools[index];
                  return CaretoolsContainer(
                    desc: data["desc"]!,
                    title: data["title"]!,
                  );
                },
              ),
            ],
          ),

          SizedBox(height: 20),
          Text(
            "Quick Relief",
            style: nunito(
              fontSize: extraLargeBody,
              color: softWarmWhite,
              fontWeight: FontWeight.w600,
              decoration: TextDecoration.none,
            ),
          ),
          SizedBox(height: 10),
          ListView.builder(
            itemCount: 5,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return QuickReliefListitem(
                timeduration: "2 min",
                title: "4-7-8 breathing technique",
              );
            },
          ),
          SizedBox(height: 20),
          BgCard(
            bgcolor: softWarmWhite.withOpacity(0.22),

            widget: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Doomscroll Detox",
                  style: nunito(
                    fontSize: mediumBody,
                    color: softWarmWhite,
                    fontWeight: FontWeight.w600,
                    decoration: TextDecoration.none,
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "🤓",
                      style: alegreyaSans(
                        fontSize: smallBody,
                        color: softWarmWhite,
                        fontWeight: FontWeight.w400,
                        decoration: TextDecoration.none,
                      ),
                    ),
                    SizedBox(width: 3),
                    SizedBox(
                      width: size.width / 1.5,
                      child: Text(
                        "Need a mental break? Check out some wholesome content instead",
                        style: alegreyaSans(
                          fontSize: smallBody,
                          color: softWarmWhite,
                          fontWeight: FontWeight.w400,
                          decoration: TextDecoration.none,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 30),
                Wrap(
                  spacing: 10,
                  runSpacing: 10,
                  children: [
                    TextContainer(title: "Just Vibes"),
                    TextContainer(title: "Good News"),
                    TextContainer(title: "Cute Animals"),
                    TextContainer(title: "Animals"),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 140),
        ],
      ),
    );
  }
}
