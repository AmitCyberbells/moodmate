import 'package:flutter/material.dart';
import 'package:moodmate/presentation/screens/home/home_page.dart';
import 'package:moodmate/presentation/screens/main/main_bottom_navigation_state.dart';
import 'package:moodmate/presentation/screens/music/music_page.dart';
import 'package:moodmate/presentation/widgets/background_video.dart';
import 'package:moodmate/presentation/widgets/custom_bottom_navigation_bar.dart';
import 'package:provider/provider.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    final navigationProvider = Provider.of<MainBottomNavigationState>(context);
    final List<Widget> _pages = const [
      HomePage(),
      Center(
        child: Text(
          "Journal Page",
          style: TextStyle(fontSize: 25, color: Colors.white),
        ),
      ),
      MusicPage(),
      Center(
        child: Text(
          "Community Page",
          style: TextStyle(fontSize: 25, color: Colors.white),
        ),
      ),
      Center(
        child: Text(
          "Tool Page",
          style: TextStyle(fontSize: 25, color: Colors.white),
        ),
      ),
    ];
    return Scaffold(
      body: Stack(
        children: [
          const BackgroundVideo(),
          _pages[navigationProvider.currentIndex],
        ],
      ),
      bottomNavigationBar: CustomBottomNavigationBar(
        currentIndex: navigationProvider.currentIndex,
        onTap: (index) {
          navigationProvider.setIndex(index);
        },
      ),
    );
  }
}
