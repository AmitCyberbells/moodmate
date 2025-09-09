import 'package:flutter/material.dart';
import 'package:moodmate/core/constants/colors.dart';
import 'package:moodmate/presentation/screens/auth/auth_provider.dart';
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
    final provider = context.read<AuthProvider>();
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Stack(
        children: [
          const BackgroundVideo(),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: EdgeInsets.all(30),
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
                    SizedBox(height: 30),
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
                      controller: provider.loginEmailController,
                      hintTextColor: softWarmWhite,
                      textColor: softWarmWhite,
                      hintText: "food@leatsophat.me",
                    ),
                    SizedBox(height: 15),
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
                      isPassword: true,
                      hintTextColor: softWarmWhite,
                      textColor: softWarmWhite,
                      controller: provider.loginPasswordController,
                      hintText: "Enter your password...",
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Consumer<AuthProvider>(
                              builder: (context, provider, child) {
                                return Checkbox(
                                  checkColor: charcoalGray,

                                  value: provider.isRememberMe,
                                  activeColor: softWarmWhite,
                                  onChanged: (value) {
                                    provider.toggleRememberMe(value!);
                                  },
                                );
                              },
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

                    SizedBox(height: 10),
                    CustomButton(
                      onPressed: () {
                        provider.login(context);
                      },
                      textColor: charcoalGray,
                      bgColor: softWarmWhite,
                      title: "Login",
                    ),
                    SizedBox(height: 10),
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
                    Text(
                      "Don't have an account? ",
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        color: softWarmWhite,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    SizedBox(height: 10),
                    CustomButton(
                      onPressed: () {
                        provider.signupTextClick(context);
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
      ),
    );
  }
}
