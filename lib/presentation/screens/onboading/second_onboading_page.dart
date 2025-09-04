import 'package:flutter/material.dart';
import 'package:moodmate/core/constants/colors.dart';
import 'package:moodmate/presentation/screens/onboading/onboading_state.dart';
import 'package:moodmate/presentation/widgets/custom_text_button.dart';
import 'package:provider/provider.dart';

class SecondOnboadingPage extends StatelessWidget {
  const SecondOnboadingPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final provider = context.read<OnboadingState>();
    return GestureDetector(
      onHorizontalDragEnd: (details) {
        if (details.primaryVelocity! > 0) {
          provider.secondOnboadingToFirst(context);
        } else if (details.primaryVelocity! < 0) {
          provider.secondOnboadingToThird(context);
        }
      },
      child: Scaffold(
        backgroundColor: softWarmWhite,
        body: Column(
          children: [
            Stack(
              children: [
                Image.asset(
                  "assets/images/onboading2.png",
                  fit: BoxFit.fitWidth,
                ),
                Positioned(
                  top: 50,
                  right: 20,
                  child: CustomTextButton(
                    onPressed: () {
                      provider.skip(context);
                    },
                    bgColor: Colors.transparent,
                    textColor: charcoalGray,
                    title: "Skip",
                  ),
                ),
                Positioned(
                  left: (size.width / 2) - 24,
                  bottom: 20,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(radius: 4, backgroundColor: softWarmWhite),
                      SizedBox(width: 10),
                      CircleAvatar(radius: 4, backgroundColor: softWarmWhite),
                      SizedBox(width: 10),
                      CircleAvatar(radius: 4, backgroundColor: softWarmWhite),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 45),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Discover tools made for your wellbeing.",
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                  SizedBox(height: 10),

                  Text(
                    "Personalized strategies to help you through tough moments.",
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
