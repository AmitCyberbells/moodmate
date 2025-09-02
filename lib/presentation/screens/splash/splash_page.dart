import 'package:flutter/material.dart';
import 'package:moodmate/core/constants/colors.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Color(0xffBE99AA), Color(0xff9B8DAE), Color(0xffBE99AA)],
        ),
      ),
      child: Column(
        children: [
          Spacer(),
          Text(
            "MoodMate",
            style: TextStyle(
              fontSize: 35,
              color: softWarmWhite,
              fontWeight: FontWeight.w400,
              decoration: TextDecoration.none,
            ),
          ),
          SizedBox(height: 40),
          Image.asset("assets/images/splash_image.png", fit: BoxFit.fitWidth),
        ],
      ),
    );
  }
}
