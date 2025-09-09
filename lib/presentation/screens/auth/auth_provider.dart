import 'package:flutter/material.dart';
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
        loginEmailController.clear();
        loginPasswordController.clear();
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
      if (signupEmailController.text.isNotEmpty &&
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
            ScaffoldMessenger.of(
              context,
            ).showSnackBar(SnackBar(content: Text(isValidEmail)));
          } else if (isValidPassword != null) {
            ScaffoldMessenger.of(
              context,
            ).showSnackBar(SnackBar(content: Text(isValidPassword)));
          } else {
            _user = await signupUseCase(
              signupEmailController.text,
              signupPasswordController.text,
            );
          }
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
        signupEmailController.clear();
        signupPasswordController.clear();
        signupConfirmPswController.clear();
      }
    } catch (e) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text("Signup failed: $e")));
      print("Error :$e");
    }
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
    signupEmailController.clear();
    signupPasswordController.clear();
    signupConfirmPswController.clear();
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
    loginEmailController.clear();
    loginPasswordController.clear();
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

  //Remember Me
  bool _isRememberMe = false;

  bool get isRememberMe => _isRememberMe;

  void toggleRememberMe(bool value) {
    _isRememberMe = value;
    notifyListeners();
  }
}
