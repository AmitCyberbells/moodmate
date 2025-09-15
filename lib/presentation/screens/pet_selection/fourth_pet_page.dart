import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:moodmate/core/constants/colors.dart';
import 'package:moodmate/core/constants/fonts.dart';
import 'package:moodmate/presentation/screens/pet_selection/pet_selection_state.dart';
import 'package:moodmate/presentation/widgets/custom_animated_button.dart';
import 'package:moodmate/presentation/widgets/custom_icon_button.dart';
import 'package:provider/provider.dart';

class FourthPetPage extends StatelessWidget {
  const FourthPetPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final provider = context.read<PetSelectionState>();

    return Scaffold(
      body: Stack(
        children: [
          Transform.rotate(
            angle: math.pi,
            child: Image.asset(
              "assets/images/auth_bg.png",
              fit: BoxFit.fitWidth,
              width: size.width,
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
            child: ListView(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CustomIconButton(
                      icon: Icons.arrow_back_ios_new_sharp,
                      bgColor: Colors.transparent,
                      onPressed: () {
                        provider.pushToHomepage(context);
                      },
                      iconColor: softWarmWhite,
                    ),
                    SizedBox(width: 20),
                    Text(
                      "Select your virtual pet",
                      style: nunito(
                        fontSize: smallTitle,
                        color: softWarmWhite,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CustomIconButton(
                      isCircular: true,
                      icon: Icons.arrow_back,
                      bgColor: softWarmWhite,
                      onPressed: () {
                        provider.fourthToThird(context);
                      },
                      iconColor: charcoalGray,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/images/pet4.png",
                          width: 214,
                          height: 314,
                        ),
                        SizedBox(height: 20),
                        Text(
                          "Hi, I am Bellie",
                          style: nunito(
                            fontSize: smallTitle,
                            color: softWarmWhite,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                    CustomIconButton(
                      isCircular: true,
                      icon: Icons.arrow_forward,
                      bgColor: softWarmWhite,
                      onPressed: () {
                        provider.fourthToFirst(context);
                      },
                      iconColor: charcoalGray,
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Divider(height: 1, color: softWarmWhite),
                SizedBox(height: 10),
                Text(
                  "Bellie isn’t just any pup—she’s your shadow, your cuddle-bug, and your personal cheerleader all wrapped up in a wagging tail.\n\nShe tilts her head like she really gets you, sneaks in soft nuzzles when you’re sad, and does her little “happy dance” whenever you smile.\n\nBellie’s not just here to guard your world—she’s here to fill it with warmth, wiggles, and unconditional love. Basically, she’s the definition of “good girl energy.",
                  style: atkinsonHyperlegible(
                    fontSize: mediumBody,
                    color: softWarmWhite,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(height: 20),
                CustomAnimatedButton(
                  onPressed: () {
                    provider.pushToHomepage(context);
                  },
                  width: size.width - 20,
                  textColor: charcoalGray,
                  bgColor: softWarmWhite,
                  title: "Pick Your Buddy",
                ),
                SizedBox(height: 20),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
