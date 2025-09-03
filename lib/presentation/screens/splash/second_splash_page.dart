import 'package:flutter/material.dart';

class SecondSplashPage extends StatelessWidget {
  const SecondSplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage("assets/images/splash_bg.png"),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text("MoodMate", style: Theme.of(context).textTheme.titleLarge),
          Image.asset("assets/images/splash_image.png", fit: BoxFit.fitWidth),
        ],
      ),
    );
  }
}
