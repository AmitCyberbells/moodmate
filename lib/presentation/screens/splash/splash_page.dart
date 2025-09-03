import 'package:flutter/material.dart';
import 'package:moodmate/presentation/screens/splash/second_splash_page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => const SecondSplashPage()),
      );
    });
  }

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
