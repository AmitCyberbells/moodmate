import 'package:flutter/material.dart';
import 'package:moodmate/presentation/screens/auth/signup_page.dart';

class AuthState extends ChangeNotifier {
  void signup(BuildContext context) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (_) => const SignupPage()),
    );
  }
}
