import 'package:flutter/material.dart';
import 'package:moodmate/core/constants/colors.dart';
import 'package:moodmate/presentation/screens/pet_selection/pet_selection_state.dart';
import 'package:moodmate/presentation/widgets/background_video.dart';
import 'package:moodmate/presentation/widgets/custom_button.dart';
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
          const BackgroundVideo(),
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
                        provider.pop(context);
                      },
                      iconColor: softWarmWhite,
                    ),
                    SizedBox(width: 20),
                    Text(
                      "Select your virtual pet",
                      style: Theme.of(context).textTheme.titleSmall?.copyWith(
                        color: softWarmWhite,
                        fontSize: 22,
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
                          width: size.width / 2.2,
                        ),
                        SizedBox(height: 20),
                        Text(
                          "Hi, I am Bellie",
                          style: Theme.of(
                            context,
                          ).textTheme.titleSmall?.copyWith(
                            color: softWarmWhite,
                            fontWeight: FontWeight.bold,
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
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: softWarmWhite,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(height: 20),
                CustomButton(
                  onPressed: () {
                    provider.pushToMusicPage(context);
                  },
                  textColor: charcoalGray,
                  bgColor: softWarmWhite,
                  title: "Pick Your Buddy",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
