import 'package:flutter/material.dart';
import 'package:moodmate/core/constants/colors.dart';
import 'package:moodmate/core/constants/fonts.dart';

class MusicPage extends StatelessWidget {
  const MusicPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Image.asset(
          "assets/images/auth_bg.png",
          width: size.width,
          height: size.height,
          fit: BoxFit.cover,
        ),
        Opacity(
          opacity: 0.2,
          child: Image.asset(
            "assets/images/music_bg.png",
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
        ),
        Padding(
          padding: EdgeInsets.all(40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
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
              SizedBox(height: 20),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Calming  Playlist",
                  style: nunito(
                    fontSize: mediumTitle,
                    color: softWarmWhite,
                    decoration: TextDecoration.none,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              SizedBox(height: 30),
              CircleAvatar(
                radius: size.width / 3,
                backgroundImage: AssetImage("assets/images/song.png"),
              ),
              SizedBox(height: 20),
              Text(
                "Rain On Glass",
                style: nunito(
                  fontSize: largeTitle,
                  decoration: TextDecoration.none,
                  color: softWarmWhite,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                "By: Painting with Passion",
                style: alegreyaSans(
                  fontSize: mediumBody,
                  color: softWarmWhite,
                  decoration: TextDecoration.none,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.shuffle_rounded,
                      size: 25,
                      color: softWarmWhite,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.fast_rewind_rounded,
                      size: 25,
                      color: softWarmWhite,
                    ),
                  ),
                  Container(
                    height: 75,
                    width: 75,
                    decoration: BoxDecoration(
                      color: softWarmWhite.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Icon(
                      Icons.pause_rounded,
                      size: 50,
                      color: onBoadingDotColor,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.fast_forward_rounded,
                      size: 25,
                      color: softWarmWhite,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.repeat_rounded,
                      size: 25,
                      color: softWarmWhite,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
