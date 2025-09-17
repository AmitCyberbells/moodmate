import 'package:flutter/material.dart';
import 'package:moodmate/core/constants/colors.dart';
import 'package:moodmate/core/constants/fonts.dart';
import 'package:moodmate/presentation/screens/splash/splash_state.dart';
import 'package:provider/provider.dart';

class FourthSpalshPage extends StatelessWidget {
  const FourthSpalshPage({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<SplashState>().init(context);
    });
    final size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        width: size.width,
        height: size.height,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/splash_bg2.png"),
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: size.height / 6),
            Image.asset("assets/icons/logomark.png", scale: 3),
            Text(
              "Mindnest",
              style: nunito(
                color: softWarmWhite,
                fontSize: extraLargeTitle,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              "A HOME FOR YOUR MIND.",
              style: nunito(
                color: softWarmWhite,
                fontSize: extraLargeBody,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
