import 'package:flutter/material.dart';
import 'package:moodmate/presentation/screens/onboading/onboading_page.dart';
import 'package:page_transition/page_transition.dart';

class SplashState with ChangeNotifier {
  void init(BuildContext context) {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        PageTransition(
          duration: Duration(seconds: 2),
          type: PageTransitionType.fade,
          child: OnboadingPage(),
        ),
      );
    });
  }
}
