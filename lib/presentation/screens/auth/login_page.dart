import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:moodmate/core/constants/colors.dart';
import 'package:moodmate/core/constants/fonts.dart';
import 'package:moodmate/presentation/screens/auth/auth_provider.dart';
import 'package:moodmate/presentation/screens/auth/widgets/icon_container.dart';
import 'package:moodmate/presentation/widgets/custom_button.dart';
import 'package:moodmate/presentation/widgets/custom_textfield.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

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
              padding: EdgeInsets.symmetric(horizontal: 40, vertical: 50),
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
                      "Login",
                      style: nunito(
                        fontSize: mediumTitle,
                        color: softWarmWhite,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      "You showed up again, and that’s already a win.",
                      style: atkinsonHyperlegible(
                        fontSize: mediumBody,
                        color: softWarmWhite,
                        fontWeight: FontWeight.w400,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 30),
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
                      controller: provider.loginEmailController,
                      hintTextColor: textfieldHintColor,
                      textColor: softWarmWhite,
                      prefixIcon: "assets/icons/email.png",
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
                      isPassword: true,
                      hintTextColor: textfieldHintColor,
                      textColor: softWarmWhite,
                      prefixIcon: "assets/icons/password.png",
                      controller: provider.loginPasswordController,
                      hintText: "Enter your password...",
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Consumer<AuthProvider>(
                              builder: (context, provider, child) {
                                return Transform.translate(
                                  offset: const Offset(-6, 0),
                                  child: Checkbox(
                                    value: provider.isRememberMe,
                                    onChanged: (value) {
                                      provider.toggleRememberMe(value!);
                                    },
                                    checkColor: charcoalGray,
                                    side: BorderSide(
                                      color: softWarmWhite,
                                      width: 1,
                                    ),
                                    activeColor: softWarmWhite,
                                    visualDensity: VisualDensity.compact,
                                    materialTapTargetSize:
                                        MaterialTapTargetSize.shrinkWrap,
                                  ),
                                );
                              },
                            ),
                            Text(
                              "Remember Me",
                              style: nunito(
                                fontSize: smallBody,
                                color: softWarmWhite,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                        Text(
                          "Forgot Password?",
                          style: nunito(
                            fontSize: smallBody,
                            color: softWarmWhite,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 30),
                    CustomButton(
                      width: size.width - 100,
                      onPressed: () {
                        provider.login(context);
                      },
                      borderColor: softWarmWhite,
                      textColor: charcoalGray,
                      bgColor: softWarmWhite,
                      title: "Login",
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
                    SizedBox(height: 30),
                    Text.rich(
                      TextSpan(
                        text: "Don’t have an account? ",
                        style: nunito(
                          fontSize: smallBody,
                          color: charcoalGray,
                          fontWeight: FontWeight.w500,
                        ),
                        children: [
                          TextSpan(
                            text: "Sign Up",
                            style: nunito(
                              fontSize: smallBody,
                              color: softWarmWhite,
                              fontWeight: FontWeight.w700,
                            ),
                            recognizer:
                                TapGestureRecognizer()
                                  ..onTap = () {
                                    provider.signupTextClick(context);
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
