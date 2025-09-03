import 'package:flutter/material.dart';

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
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text("MoodMate", style: Theme.of(context).textTheme.titleLarge),
          Image.asset("assets/images/splash_image.png", fit: BoxFit.fitWidth),
        ],
      ),
    );
  }
}
