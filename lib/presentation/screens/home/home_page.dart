import 'package:flutter/material.dart';
import 'package:moodmate/core/constants/colors.dart';
import 'package:moodmate/presentation/widgets/background_video.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Stack(
      children: [
        const BackgroundVideo(),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 60),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [],
          ),
        ),
        Positioned(
          bottom: 0,
          child: Container(
            width: size.width,
            height: 80,
            color: softWarmWhite,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.home_rounded, size: 35, color: iconColor),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.music_note_rounded,
                    size: 35,
                    color: coolGray,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.person, size: 35, color: coolGray),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.settings_outlined,
                    size: 35,
                    color: coolGray,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
