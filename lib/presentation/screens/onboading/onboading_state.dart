import 'package:flutter/material.dart';
import 'package:moodmate/presentation/screens/auth/login_page.dart';
import 'package:moodmate/presentation/screens/onboading/second_onboading_page.dart';
import 'package:moodmate/presentation/screens/onboading/third_onboading_page.dart';
import 'package:page_transition/page_transition.dart';

class OnboadingState extends ChangeNotifier {
  void skip(BuildContext context) {
    Future.delayed(const Duration(seconds: 1), () {
      Navigator.pushAndRemoveUntil(
        context,
        PageTransition(
          duration: Duration(milliseconds: 500),
          type: PageTransitionType.rightToLeft,
          child: LoginPage(),
        ),
        (Route<dynamic> route) => false,
      );
    });
  }

  void firstOnboadingToSecond(BuildContext context) {
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.push(
        context,
        PageTransition(
          duration: Duration(seconds: 1),
          type: PageTransitionType.rightToLeft,
          child: SecondOnboadingPage(),
        ),
      );
    });
  }

  void secondOnboadingToThird(BuildContext context) {
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.push(
        context,
        PageTransition(
          duration: Duration(seconds: 1),
          type: PageTransitionType.rightToLeft,
          child: ThirdOnboadingPage(),
        ),
      );
    });
  }
}
