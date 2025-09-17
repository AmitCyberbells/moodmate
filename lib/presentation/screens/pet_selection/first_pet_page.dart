import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:moodmate/core/constants/colors.dart';
import 'package:moodmate/core/constants/fonts.dart';
import 'package:moodmate/presentation/screens/pet_selection/pet_selection_state.dart';
import 'package:moodmate/presentation/widgets/custom_animated_button.dart';
import 'package:moodmate/presentation/widgets/custom_icon_button.dart';
import 'package:provider/provider.dart';

class FirstPetPage extends StatelessWidget {
  const FirstPetPage({super.key});

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
              fit: BoxFit.fill,
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
                        provider.firstToFourth(context);
                      },
                      iconColor: charcoalGray,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/images/pet1.png",
                          width: 214,
                          height: 314,
                        ),
                        SizedBox(height: 20),
                        Text(
                          "Hi, I am Oreo",
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
                        provider.firstToSecond(context);
                      },
                      iconColor: charcoalGray,
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Divider(height: 1, color: softWarmWhite),
                SizedBox(height: 10),
                Text(
                  "Oreo is your quiet little guardian. He doesn’t talk much, but he sees everything—especially the things you try to hide from yourself. \n\nWhen your mind feels heavy, Oreo just sits beside you, blinking slowly, reminding you that it’s okay to pause. He knows how long nights can feel, and that’s why he stays awake with you.\n\nYou’ll notice he never judges, never hurries you—he just waits until you’re ready. With Oreo, you’re never really alone in the dark.",
                  style: atkinsonHyperlegible(
                    fontSize: mediumBody,
                    color: softWarmWhite,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(height: 30),
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
