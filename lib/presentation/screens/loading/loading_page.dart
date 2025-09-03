import 'package:flutter/material.dart';
import 'package:moodmate/core/constants/colors.dart';
import 'package:moodmate/presentation/widgets/background_video.dart';

class LoadingPage extends StatelessWidget {
  const LoadingPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Stack(
      children: [
        const BackgroundVideo(),
        Positioned(
          bottom: 0,
          child: Container(
            height: size.height / 1.3,
            padding: EdgeInsets.symmetric(horizontal: 30),
            width: size.width,
            decoration: BoxDecoration(
              color: softWarmWhite.withOpacity(0.21),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(90),
                topRight: Radius.circular(90),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/logomark.png",
                  width: 36,
                  height: 36,
                ),
                SizedBox(height: 30),
                Text(
                  "“In the midst of winter, I found there was within me an invincible summer.”",
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    color: softWarmWhite,
                    fontWeight: FontWeight.w600,
                    fontSize: 34,
                    letterSpacing: -1.2,
                  ),
                  textAlign: TextAlign.left,
                ),
                SizedBox(height: 30),
                Text(
                  "— Albert Camus",
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
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
    );
  }
}
