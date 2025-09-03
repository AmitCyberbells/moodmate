import 'package:flutter/material.dart';
import 'package:moodmate/presentation/screens/auth/second_auth_page.dart';
import 'package:moodmate/presentation/screens/onboading/second_onboading_page.dart';
import 'package:moodmate/presentation/screens/onboading/third_onboading_page.dart';

class OnboadingState extends ChangeNotifier {
  void skip(BuildContext context) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (_) => const SecondAuthPage()),
    );
  }

  void firstOnboadingToSecond(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (_) => const SecondOnboadingPage()),
    );
  }

  void secondOnboadingToThird(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (_) => const ThirdOnboadingPage()),
    );
  }

  void secondOnboadingToFirst(BuildContext context) {
    Navigator.pop(context);
  }

  void thirdOnboadingToSecond(BuildContext context) {
    Navigator.pop(context);
  }
}
