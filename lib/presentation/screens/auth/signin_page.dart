import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:moodmate/core/constants/colors.dart';
import 'package:moodmate/presentation/screens/auth/auth_state.dart';
import 'package:moodmate/presentation/widgets/background_video.dart';
import 'package:moodmate/presentation/widgets/custom_button.dart';
import 'package:moodmate/presentation/widgets/custom_textfield.dart';
import 'package:provider/provider.dart';

class SigninPage extends StatelessWidget {
  const SigninPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final provider = context.read<AuthState>();

    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
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
                    "Sign In",
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      color: softWarmWhite,
                      fontWeight: FontWeight.bold,
                    ),
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
                    prefixIcon: Icons.email,
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
                    prefixIcon: Icons.lock,
                    controller: passwordController,
                    hintText: "Enter your password...",
                  ),
                  SizedBox(height: 10),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      "Forgot Password?",
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        color: orange,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),

                  SizedBox(height: 20),
                  CustomButton(
                    onPressed: () {
                      provider.signupButtonClick(context);
                    },
                    textColor: charcoalGray,
                    bgColor: softWarmWhite,
                    title: "Sign In",
                  ),
                  SizedBox(height: 20),
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
                  SizedBox(height: 30),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
