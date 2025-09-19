import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:moodmate/core/constants/colors.dart';
import 'package:moodmate/core/constants/fonts.dart';
import 'package:moodmate/presentation/screens/home/widgets/mood_widget.dart';
import 'package:moodmate/presentation/screens/home/widgets/tiny_win_container.dart';
import 'package:moodmate/presentation/screens/main/main_provider.dart';
import 'package:moodmate/presentation/widgets/bg_card.dart';
import 'package:moodmate/presentation/widgets/custom_button.dart';
import 'package:provider/provider.dart';

class SecondHomePage extends StatelessWidget {
  const SecondHomePage({super.key});

  @override
  Widget build(BuildContext context) {
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
                  Consumer<MainProvider>(
                    builder: (context, provider, _) {
                      String username = provider.data["username"] ?? "User";
                      return provider.isLoadingUserData == true
                          ? CircularProgressIndicator(color: softWarmWhite)
                          : Center(
                            child: Text.rich(
                              TextSpan(
                                text: "Hi! ",
                                style: nunito(
                                  fontSize: smallTitle,
                                  color: softWarmWhite,
                                  fontWeight: FontWeight.w400,
                                  decoration: TextDecoration.none,
                                ),
                                children: [
                                  TextSpan(
                                    text: username,
                                    style: nunito(
                                      fontSize: smallTitle,
                                      color: softWarmWhite,
                                      fontWeight: FontWeight.w700,
                                      decoration: TextDecoration.none,
                                    ),
                                  ),
                                ],
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                          );
                    },
                  ),

                  Text(
                    "Your feelings are valid\nand important.",
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
          Consumer<MainProvider>(
            builder: (context, provider, child) {
              final data = provider.selectedPet;
              return provider.isLoading == true
                  ? Center(
                    child: CircularProgressIndicator(color: softWarmWhite),
                  )
                  : Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      data == null
                          ? Image.asset(
                            "assets/images/pet1.png",
                            height: 120,
                            width: 80,
                          )
                          : Image.memory(
                            base64Decode(data.petImage.split(',')[1]),
                            width: 80,
                            height: 120,
                          ),
                      SizedBox(width: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text.rich(
                            TextSpan(
                              text: "Hi! ",
                              style: nunito(
                                fontSize: smallTitle,
                                color: softWarmWhite,
                                fontWeight: FontWeight.w400,
                                decoration: TextDecoration.none,
                              ),
                              children: [
                                TextSpan(
                                  text: "I am ${data!.petName}",
                                  style: nunito(
                                    decoration: TextDecoration.none,
                                    fontSize: smallTitle,
                                    color: softWarmWhite,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: size.width / 1.7,
                            child: Text(
                              "I'm here to support your mental health, ready to listen to everything you want to share.",
                              style: atkinsonHyperlegible(
                                decoration: TextDecoration.none,
                                fontSize: mediumBody,
                                color: softWarmWhite,
                                fontWeight: FontWeight.w400,
                              ),
                              textAlign: TextAlign.start,
                            ),
                          ),
                        ],
                      ),
                    ],
                  );
            },
          ),
          SizedBox(height: 30),
          BgCard(
            bgcolor: softWarmWhite.withOpacity(0.22),
            widget: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "How are feeling today?",
                  style: nunito(
                    decoration: TextDecoration.none,
                    fontSize: extraLargeBody,
                    color: softWarmWhite,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MoodWidget(
                      img: "assets/icons/happy.png",
                      title: "Happy",
                      bgColor: happyColor,
                    ),
                    MoodWidget(
                      img: "assets/icons/calm.png",
                      title: "Calm",
                      bgColor: calmColor,
                    ),
                    MoodWidget(
                      img: "assets/icons/relax.png",
                      title: "Relax",
                      bgColor: relaxColor,
                    ),
                    MoodWidget(
                      img: "assets/icons/angry.png",
                      title: "Angry",
                      bgColor: angryColor,
                    ),
                    MoodWidget(
                      img: "assets/icons/sad.png",
                      title: "Sad",
                      bgColor: sadColor,
                    ),
                    MoodWidget(
                      img: "assets/icons/anxious.png",
                      title: "Anxious",
                      bgColor: anxiousColor,
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Align(
                  alignment: Alignment.center,
                  child: CustomButton(
                    onPressed: () {},
                    textColor: charcoalGray,
                    bgColor: softWarmWhite,
                    title: "Submit",
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          BgCard(
            bgcolor: softWarmWhite.withOpacity(0.22),
            bgImg: "assets/images/professional_support_bg.png",
            widget: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Professional support",
                  style: nunito(
                    decoration: TextDecoration.none,
                    fontSize: extraLargeBody,
                    color: softWarmWhite,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  "Support is here if you need it",
                  style: alegreyaSans(
                    decoration: TextDecoration.none,
                    fontSize: smallBody,
                    color: softWarmWhite,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  "3 Therapists available now to talk",
                  style: alegreyaSans(
                    decoration: TextDecoration.none,
                    fontSize: smallBody,
                    color: softWarmWhite,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CustomButton(
                      onPressed: () {},
                      textColor: charcoalGray,
                      bgColor: softWarmWhite,
                      title: "Talk Now",
                      width: 120,
                    ),
                    CustomButton(
                      onPressed: () {},
                      width: 120,
                      textColor: charcoalGray,
                      bgColor: softWarmWhite,
                      title: "Schedule",
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          BgCard(
            bgcolor: softWarmWhite.withOpacity(0.22),
            widget: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Affirmation for the Day",
                  style: nunito(
                    decoration: TextDecoration.none,
                    fontSize: extraLargeBody,
                    color: softWarmWhite,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  "I am capable of handling whatever comes my way today.",
                  style: alegreyaSans(
                    decoration: TextDecoration.none,
                    fontSize: smallBody,
                    color: softWarmWhite,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(height: 20),
                Align(
                  alignment: Alignment.center,
                  child: CustomButton(
                    onPressed: () {},
                    width: 140,
                    textColor: charcoalGray,
                    bgColor: softWarmWhite,
                    title: "Affirm Now",
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          BgCard(
            bgcolor: softWarmWhite.withOpacity(0.22),
            widget: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Tiny Wins Tracker",
                  style: nunito(
                    decoration: TextDecoration.none,
                    fontSize: extraLargeBody,
                    color: softWarmWhite,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 20),
                Wrap(
                  spacing: 5,
                  runSpacing: 10,
                  children: [
                    TinyWinContainer(
                      bgColor: Colors.blue.withOpacity(0.25),
                      icon: "✨",
                      title: "Journaled 3 days staright",
                    ),
                    TinyWinContainer(
                      bgColor: Colors.yellow.withOpacity(0.25),
                      icon: "✨",
                      title: "Read Daily Affirmation",
                    ),
                    TinyWinContainer(
                      bgColor: Colors.red.withOpacity(0.25),
                      icon: "✨",
                      title: "Morning routine completed",
                    ),
                    TinyWinContainer(
                      bgColor: Colors.green.withOpacity(0.25),
                      icon: "✨",
                      title: "Practiced breathing exercise",
                    ),
                  ],
                ),
                SizedBox(height: 20),
                TinyWinContainer(
                  bgColor: softWarmWhite.withOpacity(0.25),
                  icon: "👏 ",
                  title: "Consistency is the key, it is your superpower.",
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
