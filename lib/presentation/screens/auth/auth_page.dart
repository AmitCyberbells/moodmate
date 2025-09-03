import 'package:flutter/material.dart';
import 'package:moodmate/core/constants/colors.dart';
import 'package:moodmate/presentation/screens/auth/auth_state.dart';
import 'package:moodmate/presentation/widgets/background_video.dart';
import 'package:moodmate/presentation/widgets/custom_button.dart';
import 'package:provider/provider.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final provider = context.read<AuthState>();
    return Stack(
      children: [
        const BackgroundVideo(),
        Positioned(
          top: 50,
          right: 20,
          child: Text(
            "Skip",
            style: Theme.of(
              context,
            ).textTheme.bodyMedium?.copyWith(color: softWarmWhite),
          ),
        ),
        Positioned(
          bottom: 0,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 50, vertical: 70),
            width: size.width,
            decoration: BoxDecoration(
              color: softWarmWhite.withOpacity(0.21),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(90),
                topRight: Radius.circular(90),
              ),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Do something today",
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
                SizedBox(height: 30),
                Row(
                  children: [
                    CustomButton(
                      onPressed: () {},
                      textColor: charcoalGray,
                      bgColor: softWarmWhite,
                      title: "Login",
                    ),
                    SizedBox(width: 20),
                    CustomButton(
                      onPressed: () {
                        provider.signup(context);
                      },
                      textColor: softWarmWhite,
                      bgColor: Colors.transparent,
                      title: "Sign Up",
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
