import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:moodmate/core/constants/colors.dart';
import 'package:moodmate/presentation/screens/auth/auth_state.dart';
import 'package:moodmate/presentation/widgets/background_video.dart';
import 'package:moodmate/presentation/widgets/custom_button.dart';
import 'package:moodmate/presentation/widgets/custom_textfield.dart';
import 'package:provider/provider.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final provider = context.read<AuthState>();

    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    TextEditingController confirmPswController = TextEditingController();
    return Stack(
      children: [
        const BackgroundVideo(),
        Positioned(
          bottom: 0,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 50),
            width: size.width,
            decoration: BoxDecoration(
              color: softWarmWhite.withOpacity(0.21),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(90),
                topRight: Radius.circular(90),
              ),
            ),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Text(
                    "Sign up here",
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      color: softWarmWhite,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "If you change the way you look at things, the things you look at change.",
                    style: Theme.of(
                      context,
                    ).textTheme.bodyMedium?.copyWith(color: softWarmWhite),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 50),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Email Address",
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        color: softWarmWhite,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                  SizedBox(height: 5),
                  CustomTextfield(
                    filled: true,
                    hintTextColor: coolGray,
                    textColor: charcoalGray,
                    bgColor: softWarmWhite,
                    controller: emailController,
                    hintText: "Enter your email...",
                  ),
                  SizedBox(height: 20),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Password",
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        color: softWarmWhite,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                  SizedBox(height: 5),
                  CustomTextfield(
                    filled: true,
                    isPassword: true,
                    hintTextColor: coolGray,
                    textColor: charcoalGray,
                    bgColor: softWarmWhite,
                    controller: passwordController,
                    hintText: "Enter your password...",
                  ),
                  SizedBox(height: 20),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Password Confirmation",
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        color: softWarmWhite,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                  SizedBox(height: 5),
                  CustomTextfield(
                    filled: true,
                    hintTextColor: coolGray,
                    textColor: charcoalGray,
                    bgColor: softWarmWhite,
                    isPassword: true,
                    controller: confirmPswController,
                    hintText: "Enter your password...",
                  ),
                  SizedBox(height: 20),
                  Text.rich(
                    TextSpan(
                      text: "Already have an account? ",
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        color: softWarmWhite,
                        fontWeight: FontWeight.w800,
                      ),
                      children: [
                        TextSpan(
                          text: "Sign In",
                          style: Theme.of(
                            context,
                          ).textTheme.bodySmall?.copyWith(
                            color: orange,
                            fontWeight: FontWeight.w800,
                          ),
                          recognizer:
                              TapGestureRecognizer()
                                ..onTap = () {
                                  provider.signinTextClick(context);
                                },
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 30),
                  CustomButton(
                    onPressed: () {
                      provider.signupButtonClick(context);
                    },
                    textColor: charcoalGray,
                    bgColor: softWarmWhite,
                    title: "Sign Up",
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
