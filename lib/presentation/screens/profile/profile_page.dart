import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:moodmate/core/constants/colors.dart';
import 'package:moodmate/core/constants/fonts.dart';
import 'package:moodmate/presentation/screens/home/widgets/tiny_win_container.dart';
import 'package:moodmate/presentation/screens/main/main_provider.dart';
import 'package:moodmate/presentation/screens/profile/profile_provider.dart';
import 'package:moodmate/presentation/screens/profile/widgets/achievement_container.dart';
import 'package:moodmate/presentation/screens/profile/widgets/setting_list_item.dart';
import 'package:moodmate/presentation/screens/profile/widgets/your_journey_container.dart';
import 'package:moodmate/presentation/widgets/bg_card.dart';
import 'package:provider/provider.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final provider = context.read<ProfileProvider>();
    final List<Map<String, dynamic>> achievements = [
      {"title": "First Steps", "desc": "Completed your first mood check-in"},
      {"title": "Journaling\nSteak", "desc": "7 days of consistent Journaling"},
      {
        "title": "Community\nHelper",
        "desc": "Completed your first mood check-in",
      },
      {
        "title": "Self-care\nChampion",
        "desc": "7 days of consistent Journaling",
      },
    ];
    final List<Map<String, dynamic>> yourJourney = [
      {"days": 47, "img": "assets/icons/calender.png", "title": "Check-ins"},
      {
        "days": 47,
        "img": "assets/icons/target.png",
        "title": "Journal Entires",
      },
      {
        "days": 47,
        "img": "assets/icons/streak_days.png",
        "title": "Streak Days",
      },
    ];

    return Padding(
      padding: EdgeInsets.all(20),
      child: ListView(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset("assets/images/menu.png", width: 25, height: 25),
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
            widget: Consumer<MainProvider>(
              builder: (context, provider, _) {
                final petData = provider.selectedPet;
                String createdAt = provider.data["createdAt"] ?? "Jan 2025";
                String username = provider.data["username"] ?? "User";
                return provider.isLoading == true
                    ? CircularProgressIndicator(color: softWarmWhite)
                    : Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        petData == null
                            ? Image.asset(
                              "assets/images/pet1.png",
                              height: 120,
                              width: 80,
                            )
                            : Image.memory(
                              base64Decode(petData.petImage.split(',')[1]),
                              width: 80,
                              height: 120,
                            ),
                        SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: size.width / 2,
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
                              ),
                            ),

                            SizedBox(
                              width: size.width / 2,
                              child: Text(
                                "Moodmate member since $createdAt.",
                                style: alegreyaSans(
                                  fontSize: smallBody,
                                  color: softWarmWhite,
                                  fontWeight: FontWeight.w400,
                                  decoration: TextDecoration.none,
                                ),
                              ),
                            ),

                            SizedBox(height: 40),
                            TinyWinContainer(
                              bgColor: Color(0xff9E2D47),
                              icon: "👏 ",
                              title: "Level 5 . Mindful Explorer",
                            ),
                          ],
                        ),
                      ],
                    );
              },
            ),
          ),
          SizedBox(height: 20),
          Text(
            "Your Journey",
            style: alegreyaSans(
              fontSize: extraLargeBody,
              color: softWarmWhite,
              fontWeight: FontWeight.w600,
              decoration: TextDecoration.none,
            ),
          ),
          SizedBox(height: 10),
          SizedBox(
            height: 100,
            width: size.width,
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: yourJourney.length,

              itemBuilder: (context, index) {
                final data = yourJourney[index];
                return YourJourneyContainer(
                  days: data["days"],
                  img: data["img"],
                  title: data["title"],
                );
              },
            ),
          ),

          SizedBox(height: 20),
          Text(
            "Achievements",
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
                itemCount: achievements.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 20,
                  crossAxisSpacing: 20,
                  childAspectRatio: 1.4,
                ),
                itemBuilder: (context, index) {
                  final data = achievements[index];
                  return AchievementContainer(
                    title: data["title"]!,
                    desc: data["desc"]!,
                  );
                },
              ),
            ],
          ),
          SizedBox(height: 20),
          Text(
            "Quick Links",
            style: nunito(
              fontSize: extraLargeBody,
              color: softWarmWhite,
              fontWeight: FontWeight.w600,
              decoration: TextDecoration.none,
            ),
          ),
          SizedBox(height: 10),
          BgCard(
            bgcolor: softWarmWhite.withOpacity(0.22),
            widget: Column(
              children: [
                SettingListItem(
                  onTap: () {},
                  img: "assets/icons/account.png",
                  title: "Account",
                ),
                SizedBox(height: 5),
                Divider(thickness: 1, color: softWarmWhite),
                SizedBox(height: 10),
                SettingListItem(
                  onTap: () {},
                  isSwitch: true,
                  img: "assets/icons/notifications.png",
                  title: "Notifications",
                ),
                SizedBox(height: 5),
                Divider(thickness: 1, color: softWarmWhite),
                SizedBox(height: 10),
                SettingListItem(
                  onTap: () {},
                  isSwitch: true,
                  img: "assets/icons/light_mode.png",
                  title: "Light Mode",
                ),
                SizedBox(height: 5),
                Divider(thickness: 1, color: softWarmWhite),
                SizedBox(height: 10),
                SettingListItem(
                  onTap: () {},
                  img: "assets/icons/language.png",
                  title: "Language",
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          BgCard(
            bgcolor: softWarmWhite.withOpacity(0.22),
            widget: Column(
              children: [
                SettingListItem(
                  onTap: () {},
                  img: "assets/icons/security.png",
                  title: "Security",
                ),
                SizedBox(height: 5),
                Divider(thickness: 1, color: softWarmWhite),
                SizedBox(height: 10),
                SettingListItem(
                  onTap: () {},
                  img: "assets/icons/terms_conditions.png",
                  title: "Terms & Conditions",
                ),
                SizedBox(height: 5),
                Divider(thickness: 1, color: softWarmWhite),
                SizedBox(height: 10),
                SettingListItem(
                  onTap: () {},
                  img: "assets/icons/privacy_policy.png",
                  title: "Privacy Policy",
                ),
                SizedBox(height: 5),
                Divider(thickness: 1, color: softWarmWhite),
                SizedBox(height: 10),
                SettingListItem(
                  onTap: () {},
                  img: "assets/icons/help.png",
                  title: "Help",
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          BgCard(
            bgcolor: softWarmWhite.withOpacity(0.22),
            widget: Column(
              children: [
                SettingListItem(
                  onTap: () {},
                  img: "assets/icons/invite_friend.png",
                  title: "Invite a friend",
                ),
                SizedBox(height: 5),
                Divider(thickness: 1, color: softWarmWhite),
                SizedBox(height: 10),
                SettingListItem(
                  onTap: () {
                    provider.logout(context);
                  },
                  isLogout: true,
                  img: "assets/icons/logout.png",
                  title: "Logout",
                ),
                SizedBox(height: 5),
              ],
            ),
          ),
          SizedBox(height: 140),
        ],
      ),
    );
  }
}
