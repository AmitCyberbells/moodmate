import 'package:flutter/material.dart';
import 'package:moodmate/core/constants/colors.dart';
import 'package:moodmate/core/constants/fonts.dart';
import 'package:moodmate/presentation/screens/loading/loading_state.dart';
import 'package:provider/provider.dart';

class LoadingPage extends StatelessWidget {
  const LoadingPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<LoadingState>().push(context);
    });
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Stack(
        children: [
          Image.asset(
            "assets/images/auth_bg.png",
            fit: BoxFit.fitWidth,
            width: size.width,
          ),
          Positioned(
            bottom: 0,
            child: Container(
              height: size.height / 1.4,
              padding: EdgeInsets.symmetric(horizontal: 40),
              width: size.width,
              decoration: BoxDecoration(
                color: softWarmWhite.withOpacity(0.21),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(55),
                  topRight: Radius.circular(55),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/icons/logomark.png",
                    width: 36,
                    height: 36,
                  ),
                  SizedBox(height: 30),
                  Text(
                    "“In the midst of winter, I found there was within me an invincible summer.”",
                    style: urbanist(
                      fontSize: largeTitle,
                      color: softWarmWhite,
                      fontWeight: FontWeight.w600,
                    ),
                    textAlign: TextAlign.left,
                  ),
                  SizedBox(height: 30),
                  Text(
                    "— Albert Camus",
                    style: urbanist(
                      fontSize: smallBody,
                      color: softWarmWhite,
                      fontWeight: FontWeight.w800,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
