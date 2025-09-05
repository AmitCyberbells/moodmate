import 'package:flutter/material.dart';
import 'package:moodmate/presentation/screens/auth/login_page.dart';
import 'package:moodmate/presentation/screens/auth/signup_page.dart';
import 'package:moodmate/presentation/screens/loading/loading_page.dart';
import 'package:page_transition/page_transition.dart';

class AuthState extends ChangeNotifier {
  void signup(BuildContext context) {
    Navigator.push(
      context,
      PageTransition(
        duration: Duration(seconds: 2),
        type: PageTransitionType.fade,
        child: SignupPage(),
      ),
    );
  }

  void signin(BuildContext context) {
    Navigator.push(
      context,
      PageTransition(
        duration: Duration(seconds: 2),
        type: PageTransitionType.fade,
        child: LoginPage(),
      ),
    );
  }

  void signupButtonClick(BuildContext context) {
    Navigator.pushAndRemoveUntil(
      context,
      PageTransition(
        duration: Duration(seconds: 2),
        type: PageTransitionType.fade,
        child: LoadingPage(),
      ),
      (Route<dynamic> route) => false,
    );
  }

  void signinButtonClick(BuildContext context) {
    Navigator.pushAndRemoveUntil(
      context,
      PageTransition(
        duration: Duration(seconds: 2),
        type: PageTransitionType.fade,
        child: LoadingPage(),
      ),
      (Route<dynamic> route) => false,
    );
  }

  void signinTextClick(BuildContext context) {
    Navigator.pushReplacement(
      context,
      PageTransition(
        duration: Duration(seconds: 2),
        type: PageTransitionType.fade,
        child: LoginPage(),
      ),
    );
  }

  void signupTextClick(BuildContext context) {
    Navigator.pushReplacement(
      context,
      PageTransition(
        duration: Duration(seconds: 2),
        type: PageTransitionType.fade,
        child: SignupPage(),
      ),
    );
  }
}
