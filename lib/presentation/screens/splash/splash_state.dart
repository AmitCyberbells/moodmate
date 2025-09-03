import 'package:flutter/material.dart';
import 'package:moodmate/presentation/screens/onboading/onboading_page.dart';

class SplashState with ChangeNotifier {
  void init(BuildContext context) {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => const OnboadingPage()),
      );
    });
  }
}
