import 'package:flutter/material.dart';
import 'package:moodmate/core/constants/colors.dart';

class SecondSplashPage extends StatelessWidget {
  const SecondSplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Positioned(
          height: size.height,
          child: Image.asset(
            "assets/images/splash_bg.png",
            fit: BoxFit.fitHeight,
          ),
        ),

        Positioned(
          top: size.height / 6,
          left: size.width / 3.5,
          child: Text(
            "MoodMate",
            style: TextStyle(
              fontSize: 35,
              color: softWarmWhite,
              fontWeight: FontWeight.w400,
              decoration: TextDecoration.none,
            ),
          ),
        ),

        Positioned(
          width: size.width,
          bottom: 0,
          child: Image.asset(
            "assets/images/splash_image.png",
            fit: BoxFit.fitWidth,
          ),
        ),
      ],
    );
  }
}
