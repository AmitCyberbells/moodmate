import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:moodmate/core/constants/colors.dart';
import 'package:moodmate/core/constants/fonts.dart';
import 'package:moodmate/presentation/screens/pet_selection/pet_selection_state.dart';
import 'package:moodmate/presentation/widgets/custom_animated_button.dart';
import 'package:moodmate/presentation/widgets/custom_icon_button.dart';
import 'package:provider/provider.dart';

class SecondPetPage extends StatelessWidget {
  const SecondPetPage({super.key});

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
                        provider.secondToFirst(context);
                      },
                      iconColor: charcoalGray,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/images/pet2.png",
                          width: 214,
                          height: 314,
                        ),
                        SizedBox(height: 20),
                        Text(
                          "Hi, I am Bubbles",
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
                        provider.secondToThird(context);
                      },
                      iconColor: charcoalGray,
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Divider(height: 1, color: softWarmWhite),
                SizedBox(height: 10),
                Text(
                  "Your cozy little owl buddy who’s here to keep you company. Bubbles may look tiny, but don’t underestimate those wise eyes—this owl knows how to bring comfort, joy, and just the right amount of silliness.\n\nWhether you’re journaling your feelings, tracking your mood, or just need a gentle nudge to smile, Bubbles will be right there, flapping in with warmth and a sprinkle of magic.\n\nBubbles isn’t just a pet, it’s your late-night confidant, your mood cheerleader, and your fluffy reminder that you’re never alone.",
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
