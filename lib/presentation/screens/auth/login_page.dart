import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:moodmate/core/constants/colors.dart';
import 'package:moodmate/presentation/screens/auth/auth_state.dart';
import 'package:moodmate/presentation/widgets/background_video.dart';
import 'package:moodmate/presentation/widgets/custom_button.dart';
import 'package:moodmate/presentation/widgets/custom_text_button.dart';
import 'package:moodmate/presentation/widgets/custom_textfield.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final provider = context.read<AuthState>();
    final bool rememberMe = true;
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    return Scaffold(
      body: Stack(
        children: [
          const BackgroundVideo(),
          Positioned(
            bottom: 0,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 40),
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
                      "Login here",
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        color: softWarmWhite,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Hi Again, You have been missed!",
                      style: Theme.of(
                        context,
                      ).textTheme.bodyMedium?.copyWith(color: softWarmWhite),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 50),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Phone or email",
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          color: softWarmWhite,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ),
                    SizedBox(height: 5),
                    CustomTextfield(
                      controller: emailController,
                      hintTextColor: softWarmWhite,
                      textColor: softWarmWhite,
                      hintText: "food@leatsophat.me",
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
                      hintTextColor: softWarmWhite,
                      textColor: softWarmWhite,
                      controller: passwordController,
                      hintText: "Enter your password...",
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Checkbox(
                              value: rememberMe,
                              activeColor: Colors.orange, // checkbox color
                              onChanged: (value) {},
                            ),
                            Text(
                              "Remember Me",
                              style: Theme.of(
                                context,
                              ).textTheme.bodySmall?.copyWith(
                                color: softWarmWhite,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                        Text(
                          "Forgot Password?",
                          style: Theme.of(
                            context,
                          ).textTheme.bodySmall?.copyWith(
                            color: softWarmWhite,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),

                    SizedBox(height: 20),
                    CustomButton(
                      onPressed: () {
                        provider.signupButtonClick(context);
                      },
                      textColor: charcoalGray,
                      bgColor: softWarmWhite,
                      title: "Login",
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          color: softWarmWhite,
                          width: size.width / 3,
                          height: 1,
                        ),
                        Text(
                          "Or",
                          style: Theme.of(
                            context,
                          ).textTheme.bodySmall?.copyWith(
                            color: softWarmWhite,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Container(
                          color: softWarmWhite,
                          width: size.width / 3,
                          height: 1,
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CustomTextButton(
                          onPressed: () {},
                          textColor: charcoalGray,
                          bgColor: softWarmWhite,
                          title: "Google",
                          isIcon: true,
                          img: "assets/images/google_logo.png",
                          borderColor: softWarmWhite,
                        ),
                        CustomTextButton(
                          onPressed: () {},
                          textColor: charcoalGray,
                          bgColor: softWarmWhite,
                          title: "Phone",
                          isIcon: true,
                          img: "assets/images/phone_logo.png",
                          borderColor: softWarmWhite,
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Text.rich(
                      TextSpan(
                        text: "Don't have an account? ",
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          color: softWarmWhite,
                          fontWeight: FontWeight.w800,
                        ),
                        children: [
                          TextSpan(
                            text: "Sign Up",
                            style: Theme.of(
                              context,
                            ).textTheme.bodySmall?.copyWith(
                              color: orange,
                              fontWeight: FontWeight.w800,
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
