import 'package:flutter/material.dart';
import 'package:moodmate/presentation/screens/main/main_provider.dart';
import 'package:moodmate/presentation/screens/main/second_main_page.dart';
import 'package:moodmate/presentation/screens/onboading/onboading_page.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashState with ChangeNotifier {
  void init(BuildContext context) async {
    final prefs = await SharedPreferences.getInstance();
    final isRememberMe = prefs.getBool("isRememberMe") ?? false;
    final token = prefs.getString("token");

    if (token != null && token.isNotEmpty) {
      if (isRememberMe) {
        final mainProvider = context.read<MainProvider>();
        mainProvider.init();
        Future.delayed(Duration(seconds: 2), () {
          Navigator.pushReplacement(
            context,
            PageTransition(
              duration: Duration(seconds: 1),
              type: PageTransitionType.rightToLeft,
              child: SecondMainPage(),
            ),
          );
        });
      } else {
        Future.delayed(Duration(seconds: 2), () {
          Navigator.pushReplacement(
            context,
            PageTransition(
              duration: Duration(seconds: 1),
              type: PageTransitionType.rightToLeft,
              child: OnboadingPage(),
            ),
          );
        });
      }
    } else {
      Future.delayed(Duration(seconds: 2), () {
        Navigator.pushReplacement(
          context,
          PageTransition(
            duration: Duration(seconds: 1),
            type: PageTransitionType.rightToLeft,
            child: OnboadingPage(),
          ),
        );
      });
    }
  }
}
