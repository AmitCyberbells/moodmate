import 'package:flutter/material.dart';
import 'package:moodmate/presentation/screens/pet_selection/pet_page.dart';
import 'package:page_transition/page_transition.dart';

class LoadingState extends ChangeNotifier {
  void push(BuildContext context) {
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        PageTransition(
          duration: Duration(seconds: 1),
          type: PageTransitionType.rightToLeft,
          child: PetPage(),
        ),
      );
    });
  }
}
