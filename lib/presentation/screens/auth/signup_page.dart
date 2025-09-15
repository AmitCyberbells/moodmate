import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:moodmate/core/constants/colors.dart';
import 'package:moodmate/core/constants/fonts.dart';
import 'package:moodmate/presentation/screens/auth/auth_provider.dart';
import 'package:moodmate/presentation/screens/auth/widgets/icon_container.dart';
import 'package:moodmate/presentation/widgets/custom_button.dart';
import 'package:moodmate/presentation/widgets/custom_textfield.dart';
import 'package:provider/provider.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final provider = context.read<AuthProvider>();
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Stack(
        alignment: Alignment.center,
        children: [
          Image.asset(
            "assets/images/auth_bg.png",
            fit: BoxFit.fitWidth,
            width: size.width,
          ),

          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: EdgeInsets.all(40),
              width: size.width,
              height: size.height / 1.1,
              decoration: BoxDecoration(
                color: softWarmWhite.withOpacity(0.21),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(55),
                  topRight: Radius.circular(55),
                ),
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Text(
                      "Sign up",
                      style: nunito(
                        fontSize: mediumTitle,
                        color: softWarmWhite,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Start fresh. This is your space to grow.",
                      style: atkinsonHyperlegible(
                        fontSize: mediumBody,
                        color: softWarmWhite,
                        fontWeight: FontWeight.w400,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 40),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Name",
                        style: nunito(
                          fontSize: smallBody,
                          color: softWarmWhite,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    SizedBox(height: 5),
                    CustomTextfield(
                      filled: true,
                      hintTextColor: textfieldHintColor,
                      textColor: softWarmWhite,
                      prefixIcon: "assets/icons/email.png",
                      controller: provider.signupNameController,
                      hintText: "What should we call you?",
                    ),
                    SizedBox(height: 20),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Email Address",
                        style: nunito(
                          fontSize: smallBody,
                          color: softWarmWhite,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    SizedBox(height: 5),
                    CustomTextfield(
                      filled: true,
                      prefixIcon: "assets/icons/email.png",
                      hintTextColor: textfieldHintColor,
                      textColor: softWarmWhite,
                      controller: provider.signupEmailController,
                      hintText: "Enter your email...",
                    ),
                    SizedBox(height: 20),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Password",
                        style: nunito(
                          fontSize: smallBody,
                          color: softWarmWhite,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    SizedBox(height: 5),
                    CustomTextfield(
                      filled: true,
                      isPassword: true,
                      prefixIcon: "assets/icons/password.png",
                      hintTextColor: textfieldHintColor,
                      textColor: softWarmWhite,
                      controller: provider.signupPasswordController,
                      hintText: "Enter your password...",
                    ),
                    SizedBox(height: 20),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Password Confirmation",
                        style: nunito(
                          fontSize: smallBody,
                          color: softWarmWhite,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    SizedBox(height: 5),
                    CustomTextfield(
                      filled: true,
                      prefixIcon: "assets/icons/password.png",
                      hintTextColor: textfieldHintColor,
                      textColor: softWarmWhite,
                      isPassword: true,
                      controller: provider.signupConfirmPswController,
                      hintText: "Enter your password...",
                    ),
                    SizedBox(height: 30),
                    CustomButton(
                      width: size.width - 100,
                      onPressed: () {
                        provider.signup(context);
                      },
                      textColor: charcoalGray,
                      bgColor: softWarmWhite,
                      title: "Sign Up",
                    ),
                    SizedBox(height: 30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconContainer(img: "assets/icons/fb_icon.png"),
                        SizedBox(width: 10),
                        IconContainer(img: "assets/icons/google_icon.png"),
                        SizedBox(width: 10),
                        IconContainer(img: "assets/icons/insta_icon.png"),
                      ],
                    ),
                    SizedBox(height: 20),
                    Text.rich(
                      TextSpan(
                        text: "Already have an account? ",
                        style: nunito(
                          fontSize: smallBody,
                          color: charcoalGray,
                          fontWeight: FontWeight.w500,
                        ),
                        children: [
                          TextSpan(
                            text: "Sign In",
                            style: nunito(
                              fontSize: smallBody,
                              color: softWarmWhite,
                              fontWeight: FontWeight.w700,
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
                    SizedBox(height: 10),
                    Text.rich(
                      textAlign: TextAlign.center,
                      TextSpan(
                        text: "Take your time. You can always sign up later. ",
                        style: nunito(
                          fontSize: smallBody,
                          color: charcoalGray,
                          fontWeight: FontWeight.w500,
                        ),
                        children: [
                          TextSpan(
                            text: "Skip",
                            style: nunito(
                              fontSize: smallBody,
                              color: softWarmWhite,
                              fontWeight: FontWeight.w700,
                            ),
                            recognizer:
                                TapGestureRecognizer()
                                  ..onTap = () {
                                    provider.skip(context);
                                  },
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 50),
                    Text(
                      "Made with 💜 for Gen-Z mental wellness",
                      style: nunito(
                        fontSize: mediumBody,
                        color: softWarmWhite,
                        fontWeight: FontWeight.w400,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 20),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
