import 'package:flutter/material.dart';
import 'package:moodmate/presentation/screens/auth/login_page.dart';
import 'package:page_transition/page_transition.dart';

class ProfileState extends ChangeNotifier {
  void logoutButton(BuildContext context) {
    Navigator.pushAndRemoveUntil(
      context,
      PageTransition(
        duration: Duration(seconds: 2),
        type: PageTransitionType.fade,
        child: LoginPage(),
      ),
      (Route<dynamic> route) => false,
    );
  }
}
