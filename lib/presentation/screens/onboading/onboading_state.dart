import 'package:flutter/material.dart';
import 'package:moodmate/presentation/screens/auth/second_auth_page.dart';
import 'package:moodmate/presentation/screens/onboading/second_onboading_page.dart';
import 'package:moodmate/presentation/screens/onboading/third_onboading_page.dart';
import 'package:page_transition/page_transition.dart';

class OnboadingState extends ChangeNotifier {
  void skip(BuildContext context) {
    Navigator.pushReplacement(
      context,
      PageTransition(
        duration: Duration(seconds: 2),
        type: PageTransitionType.fade,
        child: SecondAuthPage(),
      ),
    );
  }

  void firstOnboadingToSecond(BuildContext context) {
    Navigator.push(
      context,
      PageTransition(
        duration: Duration(seconds: 2),
        type: PageTransitionType.rightToLeft,
        child: SecondOnboadingPage(),
      ),
    );
  }

  void secondOnboadingToThird(BuildContext context) {
    Navigator.push(
      context,
      PageTransition(
        duration: Duration(seconds: 2),
        type: PageTransitionType.rightToLeft,
        child: ThirdOnboadingPage(),
      ),
    );
  }

  void secondOnboadingToFirst(BuildContext context) {
    Navigator.pop(context);
  }

  void thirdOnboadingToSecond(BuildContext context) {
    Navigator.pop(context);
  }
}
