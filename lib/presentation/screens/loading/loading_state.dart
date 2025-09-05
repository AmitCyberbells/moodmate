import 'package:flutter/material.dart';
import 'package:moodmate/presentation/screens/main/main_page.dart';
import 'package:page_transition/page_transition.dart';

class LoadingState extends ChangeNotifier {
  void arrowButtonClick(BuildContext context) {
    Navigator.push(
      context,
      PageTransition(
        duration: Duration(seconds: 2),
        type: PageTransitionType.fade,
        child: MainPage(),
      ),
    );
  }
}
