import 'package:flutter/material.dart';
import 'package:moodmate/presentation/screens/pet_selection/first_pet_page.dart';
import 'package:page_transition/page_transition.dart';

class HomeState extends ChangeNotifier {
  void navigationToSelectPetPage(BuildContext context) {
    Navigator.push(
      context,
      PageTransition(
        duration: Duration(seconds: 2),
        type: PageTransitionType.rightToLeft,
        child: FirstPetPage(),
      ),
    );
  }
}
