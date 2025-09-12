import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:moodmate/core/utils/validators.dart';
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

  //for signup
  TextEditingController signupNameController = TextEditingController();
  TextEditingController signupEmailController = TextEditingController();
  TextEditingController signupPasswordController = TextEditingController();
  TextEditingController signupConfirmPswController = TextEditingController();

  //for login
  TextEditingController loginEmailController = TextEditingController();
  TextEditingController loginPasswordController = TextEditingController();

  UserEntity? _user;

  UserEntity? get user => _user;

  AuthProvider({required this.loginUseCase, required this.signupUseCase});

  Future<void> login(BuildContext context) async {
    try {
      if (loginEmailController.text.isNotEmpty &&
          loginPasswordController.text.isNotEmpty) {
        _user = await loginUseCase(
          loginEmailController.text,
          loginPasswordController.text,
        );
      } else {
        Fluttertoast.showToast(msg: "All Fields are required.");
      }

      if (_user != null) {
        Fluttertoast.showToast(msg: "Login Successfull.");
        Navigator.pushAndRemoveUntil(
          context,
          PageTransition(
            duration: Duration(milliseconds: 100),
            type: PageTransitionType.fade,
            child: LoadingPage(),
          ),
          (Route<dynamic> route) => false,
        );
        loginEmailController.clear();
        loginPasswordController.clear();
      }
    } catch (e) {
      Fluttertoast.showToast(msg: "Login failed Because Of $e");
    }
  }

  Future<void> signup(BuildContext context) async {
    try {
      if (signupNameController.text.isNotEmpty &&
          signupEmailController.text.isNotEmpty &&
          signupPasswordController.text.isNotEmpty &&
          signupConfirmPswController.text.isNotEmpty) {
        if (signupPasswordController.text == signupConfirmPswController.text) {
          final isValidEmail = Validators.emailValidator(
            signupEmailController.text,
          );
          final isValidPassword = Validators.passwordValidator(
            signupPasswordController.text,
          );
          if (isValidEmail != null) {
            Fluttertoast.showToast(msg: isValidEmail);
          } else if (isValidPassword != null) {
            Fluttertoast.showToast(msg: isValidPassword);
          } else {
            _user = await signupUseCase(
              signupNameController.text,
              signupEmailController.text,
              signupPasswordController.text,
            );
          }
        } else {
          Fluttertoast.showToast(
            msg: "Password and Confirm Password should be same.",
          );
        }
      } else {
        Fluttertoast.showToast(msg: "All Fields are required.");
      }
      if (_user != null) {
        Fluttertoast.showToast(msg: "Signup Successfull.");
        Navigator.pushAndRemoveUntil(
          context,
          PageTransition(
            duration: Duration(milliseconds: 100),
            type: PageTransitionType.rightToLeft,
            child: LoadingPage(),
          ),
          (Route<dynamic> route) => false,
        );
        signupNameController.clear();
        signupEmailController.clear();
        signupPasswordController.clear();
        signupConfirmPswController.clear();
      }
    } catch (e) {
      Fluttertoast.showToast(msg: "Signup failed. $e");
    }
  }

  void signinTextClick(BuildContext context) {
    Future.delayed(const Duration(seconds: 1), () {
      Navigator.pushReplacement(
        context,
        PageTransition(
          duration: Duration(milliseconds: 100),
          type: PageTransitionType.rightToLeft,
          child: LoginPage(),
        ),
      );
    });
    signupNameController.clear();
    signupEmailController.clear();
    signupPasswordController.clear();
    signupConfirmPswController.clear();
  }

  void skip(BuildContext context) {
    Future.delayed(const Duration(seconds: 1), () {
      Navigator.pushAndRemoveUntil(
        context,
        PageTransition(
          duration: Duration(milliseconds: 100),
          type: PageTransitionType.rightToLeft,
          child: LoadingPage(),
        ),
        (Route<dynamic> route) => false,
      );
    });
    signupNameController.clear();
    signupEmailController.clear();
    signupPasswordController.clear();
    signupConfirmPswController.clear();
  }

  void signupTextClick(BuildContext context) {
    Future.delayed(const Duration(seconds: 1), () {
      Navigator.pushReplacement(
        context,
        PageTransition(
          duration: Duration(milliseconds: 100),
          type: PageTransitionType.rightToLeft,
          child: SignupPage(),
        ),
      );
    });
    loginEmailController.clear();
    loginPasswordController.clear();
  }

  void navigateToSignupPage(BuildContext context) {
    Future.delayed(const Duration(seconds: 1), () {
      Navigator.push(
        context,
        PageTransition(
          duration: Duration(milliseconds: 100),
          type: PageTransitionType.rightToLeft,
          child: SignupPage(),
        ),
      );
    });
  }

  void navigateToSigninPage(BuildContext context) {
    Future.delayed(const Duration(seconds: 1), () {
      Navigator.push(
        context,
        PageTransition(
          duration: Duration(milliseconds: 100),
          type: PageTransitionType.rightToLeft,
          child: LoginPage(),
        ),
      );
    });
  }

  //Remember Me
  bool _isRememberMe = false;

  bool get isRememberMe => _isRememberMe;

  void toggleRememberMe(bool value) {
    _isRememberMe = value;
    notifyListeners();
  }
}
