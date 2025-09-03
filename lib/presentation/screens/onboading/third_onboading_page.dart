import 'package:flutter/material.dart';
import 'package:moodmate/core/constants/colors.dart';
import 'package:moodmate/presentation/screens/onboading/onboading_state.dart';
import 'package:moodmate/presentation/widgets/custom_text_button.dart';
import 'package:provider/provider.dart';

class ThirdOnboadingPage extends StatelessWidget {
  const ThirdOnboadingPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final provider = context.read<OnboadingState>();
    return GestureDetector(
      onHorizontalDragEnd: (details) {
        if (details.primaryVelocity! > 0) {
          provider.thirdOnboadingToSecond(context);
        } else if (details.primaryVelocity! < 0) {
          provider.skip(context);
        }
      },
      child: Scaffold(
        backgroundColor: softWarmWhite,
        body: Column(
          children: [
            Stack(
              children: [
                Image.asset(
                  "assets/images/onboading3.png",
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
                    "Find support when you need it most.",
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  SizedBox(height: 10),

                  Text(
                    "Because you don’t have to go through it alone.",
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
