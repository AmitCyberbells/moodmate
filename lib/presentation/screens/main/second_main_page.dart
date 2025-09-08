import 'package:flutter/material.dart';
import 'package:moodmate/presentation/screens/home/home_page.dart';
import 'package:moodmate/presentation/screens/home/second_home_page.dart';
import 'package:moodmate/presentation/screens/main/main_bottom_navigation_state.dart';
import 'package:moodmate/presentation/screens/music/music_page.dart';
import 'package:moodmate/presentation/screens/profile/profile_page.dart';
import 'package:moodmate/presentation/widgets/background_video.dart';
import 'package:moodmate/presentation/widgets/second_custom_bottom_nav_bar.dart';
import 'package:provider/provider.dart';

class SecondMainPage extends StatelessWidget {
  const SecondMainPage({super.key});

  @override
  Widget build(BuildContext context) {
    final navigationProvider = Provider.of<MainBottomNavigationState>(context);
    final size = MediaQuery.of(context).size;
    final List<Widget> _pages = const [
      SecondHomePage(),
      HomePage(),
      MusicPage(),
      Center(
        child: Text(
          "Community Page",
          style: TextStyle(fontSize: 25, color: Colors.white),
        ),
      ),
      ProfilePage(),
    ];
    return Stack(
      children: [
        const BackgroundVideo(),
        _pages[navigationProvider.currentIndex],
        Positioned(
          bottom: 0,
          child: Container(
            width: size.width - 40,
            margin: EdgeInsets.all(20),
            child: SecondCustomBottomNavBar(
              currentIndex: navigationProvider.currentIndex,
              onTap: (index) {
                navigationProvider.setIndex(index);
              },
            ),
          ),
        ),
      ],
    );
  }
}
