import 'package:flutter/material.dart';
import 'package:moodmate/presentation/screens/pet_selection/fourth_pet_page.dart';
import 'package:moodmate/presentation/screens/pet_selection/first_pet_page.dart';
import 'package:moodmate/presentation/screens/pet_selection/second_pet_page.dart';
import 'package:moodmate/presentation/screens/pet_selection/third_pet_page.dart';
import 'package:moodmate/presentation/screens/music/music_page.dart';
import 'package:page_transition/page_transition.dart';

class PetSelectionState extends ChangeNotifier {
  void pop(BuildContext context) {
    Navigator.pop(context);
  }

  void pushToMusicPage(BuildContext context) {
    Navigator.push(
      context,
      PageTransition(
        duration: Duration(seconds: 2),
        type: PageTransitionType.fade,
        child: MusicPage(),
      ),
    );
  }

  void firstToSecond(BuildContext context) {
    Navigator.pushReplacement(
      context,
      PageTransition(
        duration: Duration(seconds: 2),
        type: PageTransitionType.rightToLeft,
        child: SecondPetPage(),
      ),
    );
  }

  void firstToFourth(BuildContext context) {
    Navigator.pushReplacement(
      context,
      PageTransition(
        duration: Duration(seconds: 2),
        type: PageTransitionType.leftToRight,
        child: FourthPetPage(),
      ),
    );
  }

  void secondToThird(BuildContext context) {
    Navigator.pushReplacement(
      context,
      PageTransition(
        duration: Duration(seconds: 2),
        type: PageTransitionType.rightToLeft,
        child: ThirdPetPage(),
      ),
    );
  }

  void secondToFirst(BuildContext context) {
    Navigator.pushReplacement(
      context,
      PageTransition(
        duration: Duration(seconds: 2),
        type: PageTransitionType.leftToRight,
        child: FirstPetPage(),
      ),
    );
  }

  void thirdToFourth(BuildContext context) {
    Navigator.pushReplacement(
      context,
      PageTransition(
        duration: Duration(seconds: 2),
        type: PageTransitionType.rightToLeft,
        child: FourthPetPage(),
      ),
    );
  }

  void thirdToSecond(BuildContext context) {
    Navigator.pushReplacement(
      context,
      PageTransition(
        duration: Duration(seconds: 2),
        type: PageTransitionType.leftToRight,
        child: SecondPetPage(),
      ),
    );
  }

  void fourthToFirst(BuildContext context) {
    Navigator.pushReplacement(
      context,
      PageTransition(
        duration: Duration(seconds: 2),
        type: PageTransitionType.rightToLeft,
        child: FirstPetPage(),
      ),
    );
  }

  void fourthToThird(BuildContext context) {
    Navigator.pushReplacement(
      context,
      PageTransition(
        duration: Duration(seconds: 2),
        type: PageTransitionType.leftToRight,
        child: ThirdPetPage(),
      ),
    );
  }
}
