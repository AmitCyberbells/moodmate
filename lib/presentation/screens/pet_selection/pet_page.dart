import 'dart:convert';
import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:moodmate/core/constants/colors.dart';
import 'package:moodmate/core/constants/fonts.dart';
import 'package:moodmate/presentation/screens/pet_selection/pet_selection_state.dart';
import 'package:moodmate/presentation/widgets/custom_animated_button.dart';
import 'package:moodmate/presentation/widgets/custom_icon_button.dart';
import 'package:provider/provider.dart';

class PetPage extends StatelessWidget {
  const PetPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final provider = context.read<PetSelectionProvider>();
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
                        provider.pop(context);
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
                SizedBox(height: 20),
                Consumer<PetSelectionProvider>(
                  builder: (context, value, child) {
                    final data = provider.pets;
                    final index = provider.currentIndex;
                    return provider.isLoading == true
                        ? Center(
                          child: CircularProgressIndicator(
                            color: softWarmWhite,
                          ),
                        )
                        : data == null
                        ? Center(child: Text("No Data Available."))
                        : Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                CustomIconButton(
                                  isCircular: true,
                                  icon: Icons.arrow_back,
                                  bgColor: softWarmWhite,
                                  onPressed: () {
                                    provider.leftButtonPressed();
                                  },
                                  iconColor: charcoalGray,
                                ),

                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      width: index == 2 ? 120 : 224,
                                      height: index == 2 ? 120 : 224,
                                      child: Image.memory(
                                        base64Decode(
                                          data[index].petImage.split(',')[1],
                                        ),
                                        width: index == 2 ? 180 : 214,

                                        fit: BoxFit.fitHeight,
                                      ),
                                    ),
                                    const SizedBox(height: 20),
                                    Text(
                                      "Hi, I am ${data[index].petName}",
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
                                    provider.rightButtonPressed();
                                  },
                                  iconColor: charcoalGray,
                                ),
                              ],
                            ),
                            SizedBox(height: 20),
                            Divider(height: 1, color: softWarmWhite),
                            SizedBox(height: 10),
                            Text(
                              data[index].petDescription,
                              style: atkinsonHyperlegible(
                                fontSize: mediumBody,
                                color: softWarmWhite,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            SizedBox(height: 30),
                            CustomAnimatedButton(
                              onPressed: () {
                                provider.petSelected(context);
                              },
                              width: size.width - 20,
                              textColor: charcoalGray,
                              bgColor: softWarmWhite,
                              title: "Pick Your Buddy",
                            ),
                            SizedBox(height: 20),
                          ],
                        );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
