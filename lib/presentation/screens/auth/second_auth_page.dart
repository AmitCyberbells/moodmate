import 'package:flutter/material.dart';
import 'package:moodmate/core/constants/colors.dart';
import 'package:moodmate/presentation/screens/auth/auth_state.dart';
import 'package:moodmate/presentation/widgets/background_video.dart';
import 'package:moodmate/presentation/widgets/custom_button.dart'
    show CustomButton;
import 'package:provider/provider.dart';

class SecondAuthPage extends StatelessWidget {
  const SecondAuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final provider = context.read<AuthState>();
    return Stack(
      children: [
        const BackgroundVideo(),
        Positioned(
          top: 50,
          child: Container(
            width: size.width,
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Moodmate",
                      style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        color: softWarmWhite,
                        fontWeight: FontWeight.w400,
                        fontSize: 42,
                      ),
                    ),
                    Text(
                      "Skip",
                      style: Theme.of(
                        context,
                      ).textTheme.bodyMedium?.copyWith(color: softWarmWhite),
                    ),
                  ],
                ),
                SizedBox(height: 20),
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
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomButton(
                      onPressed: () {
                        provider.signin(context);
                      },
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
        SizedBox(height: 20),
        Positioned(
          bottom: -20,
          child: Image.asset("assets/images/auth.png", width: size.width),
        ),
      ],
    );
  }
}
