import 'package:flutter/material.dart';
import 'package:moodmate/core/constants/colors.dart';
import 'package:moodmate/presentation/screens/pet_selection/pet_selection_state.dart';
import 'package:moodmate/presentation/widgets/background_video.dart';
import 'package:moodmate/presentation/widgets/custom_button.dart';
import 'package:moodmate/presentation/widgets/custom_icon_button.dart';
import 'package:provider/provider.dart';

class ThirdPetPage extends StatelessWidget {
  const ThirdPetPage({super.key});

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
                        provider.thirdToSecond(context);
                      },
                      iconColor: charcoalGray,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/images/pet3.png",
                          width: size.width / 2.2,
                        ),
                        SizedBox(height: 20),
                        Text(
                          "Hi, I am Pip",
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
                        provider.thirdToFourth(context);
                      },
                      iconColor: charcoalGray,
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Divider(height: 1, color: softWarmWhite),
                SizedBox(height: 10),
                Text(
                  "Pip is a little ducky with a big heart and even bigger curiosity. Always waddling around with cheerful energy, Pip brings sunshine to your cloudy days.\n\nWhether it’s celebrating your wins or splashing away your worries, this tiny feathered friend is here to remind you: it’s okay to take things one small step (or waddle) at a time.\n\nWith Pip around, life feels lighter, warmer, and a lot more fun.",
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
