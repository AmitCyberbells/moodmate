import 'package:flutter/material.dart';
import 'package:moodmate/presentation/screens/pet_selection/first_pet_page.dart';
import 'package:page_transition/page_transition.dart';

class LoadingState extends ChangeNotifier {
  void push(BuildContext context) {
    Future.delayed(const Duration(seconds: 1), () {
      Navigator.push(
        context,
        PageTransition(
          duration: Duration(milliseconds: 700),
          type: PageTransitionType.rightToLeft,
          child: FirstPetPage(),
        ),
      );
    });
  }
}
