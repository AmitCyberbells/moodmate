import 'package:flutter/material.dart';
import 'package:moodmate/presentation/screens/home/fourth_home_page.dart';
import 'package:moodmate/presentation/screens/home/home_page.dart';
import 'package:moodmate/presentation/screens/home/second_home_page.dart';
import 'package:moodmate/presentation/screens/home/third_home_page.dart';
import 'package:page_transition/page_transition.dart';

class HomeState extends ChangeNotifier {
  void pop(BuildContext context) {
    Navigator.pop(context);
  }

  void firstToSecond(BuildContext context) {
    Navigator.pushReplacement(
      context,
      PageTransition(
        duration: Duration(seconds: 2),
        type: PageTransitionType.rightToLeft,
        child: SecondHomePage(),
      ),
    );
  }

  void firstToFourth(BuildContext context) {
    Navigator.pushReplacement(
      context,
      PageTransition(
        duration: Duration(seconds: 2),
        type: PageTransitionType.leftToRight,
        child: FourthHomePage(),
      ),
    );
  }

  void secondToThird(BuildContext context) {
    Navigator.pushReplacement(
      context,
      PageTransition(
        duration: Duration(seconds: 2),
        type: PageTransitionType.rightToLeft,
        child: ThirdHomePage(),
      ),
    );
  }

  void secondToFirst(BuildContext context) {
    Navigator.pushReplacement(
      context,
      PageTransition(
        duration: Duration(seconds: 2),
        type: PageTransitionType.leftToRight,
        child: HomePage(),
      ),
    );
  }

  void thirdToFourth(BuildContext context) {
    Navigator.pushReplacement(
      context,
      PageTransition(
        duration: Duration(seconds: 2),
        type: PageTransitionType.rightToLeft,
        child: FourthHomePage(),
      ),
    );
  }

  void thirdToSecond(BuildContext context) {
    Navigator.pushReplacement(
      context,
      PageTransition(
        duration: Duration(seconds: 2),
        type: PageTransitionType.leftToRight,
        child: SecondHomePage(),
      ),
    );
  }

  void fourthToFirst(BuildContext context) {
    Navigator.pushReplacement(
      context,
      PageTransition(
        duration: Duration(seconds: 2),
        type: PageTransitionType.rightToLeft,
        child: HomePage(),
      ),
    );
  }

  void fourthToThird(BuildContext context) {
    Navigator.pushReplacement(
      context,
      PageTransition(
        duration: Duration(seconds: 2),
        type: PageTransitionType.leftToRight,
        child: ThirdHomePage(),
      ),
    );
  }
}
