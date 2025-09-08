import 'package:flutter/material.dart';
import 'package:moodmate/core/constants/colors.dart';
import 'package:moodmate/presentation/screens/home/widgets/tiny_win_container.dart';
import 'package:moodmate/presentation/screens/profile/profile_state.dart';
import 'package:moodmate/presentation/screens/profile/widgets/achievement_container.dart';
import 'package:moodmate/presentation/screens/profile/widgets/setting_list_item.dart';
import 'package:moodmate/presentation/screens/profile/widgets/your_journey_container.dart';
import 'package:provider/provider.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = context.read<ProfileState>();
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
                  color: pinkContainer,
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
          Container(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: softWarmWhite.withOpacity(0.21),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset("assets/images/pet1.png", height: 120),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text.rich(
                      TextSpan(
                        text: "Hi! ",
                        style: Theme.of(context).textTheme.titleSmall?.copyWith(
                          color: softWarmWhite,
                          fontWeight: FontWeight.w600,
                        ),
                        children: [
                          TextSpan(
                            text: "Siya",
                            style: Theme.of(
                              context,
                            ).textTheme.titleSmall?.copyWith(
                              color: softWarmWhite,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      "Moodmate member since may 2025",
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        color: softWarmWhite,
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
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
            ),
          ),
          SizedBox(height: 20),
          Text(
            "Your Journey",
            style: Theme.of(context).textTheme.titleSmall?.copyWith(
              color: softWarmWhite,
              fontWeight: FontWeight.w600,
              fontSize: 20,
            ),
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              YourJourneyContainer(
                days: 47,
                icon: Icons.calendar_month_outlined,
                title: "Check-ins",
              ),
              YourJourneyContainer(
                days: 47,
                icon: Icons.center_focus_strong,
                title: "Journal Entires",
              ),
              YourJourneyContainer(
                days: 47,
                icon: Icons.trending_up_outlined,
                title: "Streak Days",
              ),
            ],
          ),
          SizedBox(height: 20),
          Text(
            "Achievements",
            style: Theme.of(context).textTheme.titleSmall?.copyWith(
              color: softWarmWhite,
              fontWeight: FontWeight.w600,
              fontSize: 20,
            ),
          ),
          SizedBox(height: 10),
          Wrap(
            spacing: 10,
            runSpacing: 10,
            children: [
              AchievementContainer(
                desc: "Completed your first mood check-in",

                title: "First Steps",
              ),
              AchievementContainer(
                desc: "7 days of consistent Journaling",

                title: "Journaling Steak",
              ),
              AchievementContainer(
                desc: "Completed your first mood check-in",

                title: "Community Helper",
              ),
              AchievementContainer(
                desc: "7 days of consistent Journaling",

                title: "Self-care Champion",
              ),
            ],
          ),
          SizedBox(height: 20),
          Text(
            "Quick Links",
            style: Theme.of(context).textTheme.titleSmall?.copyWith(
              color: softWarmWhite,
              fontWeight: FontWeight.w600,
              fontSize: 20,
            ),
          ),
          SizedBox(height: 10),
          Container(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: softWarmWhite.withOpacity(0.21),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                SettingListItem(
                  onTap: () {},
                  icon: Icons.person_2_outlined,
                  title: "Account",
                ),
                SizedBox(height: 5),
                Divider(thickness: 1, color: softWarmWhite),
                SizedBox(height: 10),
                SettingListItem(
                  onTap: () {},
                  isSwitch: true,
                  icon: Icons.notifications_outlined,
                  title: "Notifications",
                ),
                SizedBox(height: 5),
                Divider(thickness: 1, color: softWarmWhite),
                SizedBox(height: 10),
                SettingListItem(
                  onTap: () {},
                  isSwitch: true,
                  icon: Icons.light_mode_outlined,
                  title: "Light Mode",
                ),
                SizedBox(height: 5),
                Divider(thickness: 1, color: softWarmWhite),
                SizedBox(height: 10),
                SettingListItem(
                  onTap: () {},
                  icon: Icons.language_outlined,
                  title: "Language",
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Container(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: softWarmWhite.withOpacity(0.21),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                SettingListItem(
                  onTap: () {},
                  icon: Icons.security_outlined,
                  title: "Security",
                ),
                SizedBox(height: 5),
                Divider(thickness: 1, color: softWarmWhite),
                SizedBox(height: 10),
                SettingListItem(
                  onTap: () {},
                  icon: Icons.note_sharp,
                  title: "Terms & Conditions",
                ),
                SizedBox(height: 5),
                Divider(thickness: 1, color: softWarmWhite),
                SizedBox(height: 10),
                SettingListItem(
                  onTap: () {},
                  icon: Icons.lock_outline,
                  title: "Privacy Policy",
                ),
                SizedBox(height: 5),
                Divider(thickness: 1, color: softWarmWhite),
                SizedBox(height: 10),
                SettingListItem(
                  onTap: () {},
                  icon: Icons.info_outline,
                  title: "Help",
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Container(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: softWarmWhite.withOpacity(0.21),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                SettingListItem(
                  onTap: () {},
                  icon: Icons.person_add_alt,
                  title: "Invite a friend",
                ),
                SizedBox(height: 5),
                Divider(thickness: 1, color: softWarmWhite),
                SizedBox(height: 10),
                SettingListItem(
                  onTap: () {
                    provider.logoutButton(context);
                  },
                  isLogout: true,
                  icon: Icons.logout_outlined,
                  title: "Logout",
                ),
                SizedBox(height: 5),
              ],
            ),
          ),
          SizedBox(height: 80),
        ],
      ),
    );
  }
}
