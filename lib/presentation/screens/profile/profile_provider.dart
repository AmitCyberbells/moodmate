import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:moodmate/domain/usecases/auth_usecase.dart';
import 'package:moodmate/presentation/screens/auth/login_page.dart';
import 'package:moodmate/presentation/screens/main/main_bottom_navigation_state.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ProfileProvider extends ChangeNotifier {
  final AuthUsecase authUseCase;
  ProfileProvider({required this.authUseCase});

  Future<void> logout(BuildContext context) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final token = prefs.getString("token");
      if (token != null) {
        await authUseCase.logout(token);
        await prefs.clear();
        final indexProvider = context.read<MainBottomNavigationState>();
        Navigator.pushAndRemoveUntil(
          context,
          PageTransition(
            duration: Duration(milliseconds: 500),
            type: PageTransitionType.rightToLeft,
            child: LoginPage(),
          ),
          (Route<dynamic> route) => false,
        );
        print("Remember me : ${prefs.getBool("isRememberMe")}");
        Fluttertoast.showToast(msg: "Logout Successfull.");
        indexProvider.setIndex(0);
      } else {
        throw Exception("No token found");
      }
    } catch (e) {
      print("Logout failed Because Of $e");
      Fluttertoast.showToast(msg: "Logout failed Because Of $e");
    }
  }
}
