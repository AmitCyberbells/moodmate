import 'package:flutter/material.dart';
import 'package:moodmate/domain/entities/user_entity.dart';
import 'package:moodmate/domain/usecases/login_usecase.dart';
import 'package:moodmate/domain/usecases/signup_usecase.dart';
import 'package:moodmate/presentation/screens/auth/login_page.dart';
import 'package:moodmate/presentation/screens/auth/signup_page.dart';
import 'package:moodmate/presentation/screens/loading/loading_page.dart';
import 'package:page_transition/page_transition.dart';

class AuthProvider with ChangeNotifier {
  final LoginUseCase loginUseCase;
  final SignupUseCase signupUseCase;

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPswController = TextEditingController();

  UserEntity? _user;

  UserEntity? get user => _user;

  AuthProvider({required this.loginUseCase, required this.signupUseCase});

  Future<void> login(BuildContext context) async {
    try {
      if (emailController.text.isNotEmpty &&
          passwordController.text.isNotEmpty) {
        print(
          "In Provider => email : ${emailController.text}, password : ${passwordController.text}",
        );
        _user = await loginUseCase(
          emailController.text,
          passwordController.text,
        );
      } else {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text("All Fields are required.")));
      }

      if (_user != null) {
        Navigator.pushAndRemoveUntil(
          context,
          PageTransition(
            duration: Duration(seconds: 2),
            type: PageTransitionType.fade,
            child: LoadingPage(),
          ),
          (Route<dynamic> route) => false,
        );
        emailController.clear();
        passwordController.clear();
      }
    } catch (e) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text("Login failed: $e")));
      print("Error :$e");
    }
  }

  Future<void> signup(BuildContext context) async {
    try {
      if (emailController.text.isNotEmpty &&
          passwordController.text.isNotEmpty &&
          confirmPswController.text.isNotEmpty) {
        if (passwordController.text == confirmPswController.text) {
          _user = await signupUseCase(
            emailController.text,
            passwordController.text,
          );
        } else {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text("Password and Confirm Password should be same."),
            ),
          );
        }
      } else {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text("All Fields are required.")));
      }
      if (_user != null) {
        Navigator.pushAndRemoveUntil(
          context,
          PageTransition(
            duration: Duration(seconds: 2),
            type: PageTransitionType.fade,
            child: LoadingPage(),
          ),
          (Route<dynamic> route) => false,
        );
        emailController.clear();
        passwordController.clear();
        confirmPswController.clear();
      }
    } catch (e) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text("Signup failed: $e")));
      print("Error :$e");
    }
  }

  void signinTextClick(BuildContext context) {
    emailController.clear();
    passwordController.clear();
    confirmPswController.clear();
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
    emailController.clear();
    passwordController.clear();
    confirmPswController.clear();
    Navigator.pushReplacement(
      context,
      PageTransition(
        duration: Duration(seconds: 2),
        type: PageTransitionType.fade,
        child: SignupPage(),
      ),
    );
  }

  void navigateToSignupPage(BuildContext context) {
    Navigator.push(
      context,
      PageTransition(
        duration: Duration(seconds: 2),
        type: PageTransitionType.fade,
        child: SignupPage(),
      ),
    );
  }

  void navigateToSigninPage(BuildContext context) {
    Navigator.push(
      context,
      PageTransition(
        duration: Duration(seconds: 2),
        type: PageTransitionType.fade,
        child: LoginPage(),
      ),
    );
  }
}
