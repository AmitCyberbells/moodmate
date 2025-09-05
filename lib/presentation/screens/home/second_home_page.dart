import 'package:flutter/material.dart';
import 'package:moodmate/core/constants/colors.dart';
import 'package:moodmate/presentation/screens/home/widgets/mood_widget.dart';
import 'package:moodmate/presentation/widgets/custom_button.dart';

class SecondHomePage extends StatelessWidget {
  const SecondHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 20, left: 20, right: 20),
      child: ListView(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Hi!, Siya",
                    style: Theme.of(context).textTheme.titleSmall?.copyWith(
                      color: softWarmWhite,
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    "Your feelings are valid and important.",
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      color: softWarmWhite,
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              Container(
                width: 105,
                height: 50,
                padding: EdgeInsets.all(3),
                decoration: BoxDecoration(
                  color: pinkContainer,
                  borderRadius: BorderRadius.circular(40),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 45,
                      width: 45,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: serachContainer,
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: Icon(
                        Icons.search_rounded,
                        size: 18,
                        color: softWarmWhite,
                      ),
                    ),
                    CircleAvatar(
                      child: Image.asset(
                        "assets/images/profile_pic.png",
                        width: 45,
                        height: 45,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 30),
          Container(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: softWarmWhite.withOpacity(0.21),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "How are feeling today?",
                  style: Theme.of(context).textTheme.titleSmall?.copyWith(
                    color: softWarmWhite,
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MoodWidget(
                      img: "assets/images/happy.png",
                      title: "Happy",
                      bgColor: happyColor,
                    ),
                    MoodWidget(
                      img: "assets/images/calm.png",
                      title: "Calm",
                      bgColor: calmColor,
                    ),
                    MoodWidget(
                      img: "assets/images/relax.png",
                      title: "Relax",
                      bgColor: relaxColor,
                    ),
                    MoodWidget(
                      img: "assets/images/angry.png",
                      title: "Angry",
                      bgColor: angryColor,
                    ),
                    MoodWidget(
                      img: "assets/images/sad.png",
                      title: "Sad",
                      bgColor: sadColor,
                    ),
                    MoodWidget(
                      img: "assets/images/anxious.png",
                      title: "Anxious",
                      bgColor: anxiousColor,
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Align(
                  alignment: Alignment.center,
                  child: CustomButton(
                    onPressed: () {},
                    textColor: charcoalGray,
                    bgColor: softWarmWhite,
                    title: "Submit",
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Container(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: softWarmWhite.withOpacity(0.21),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "How are feeling today?",
                  style: Theme.of(context).textTheme.titleSmall?.copyWith(
                    color: softWarmWhite,
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  "Support is here if you need it",
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    color: softWarmWhite,

                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  "3 Therapists available now to talk",
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: softWarmWhite,

                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomButton(
                      onPressed: () {},
                      textColor: charcoalGray,
                      bgColor: softWarmWhite,
                      title: "Talk Now",
                      width: 120,
                    ),
                    CustomButton(
                      onPressed: () {},
                      width: 120,
                      textColor: charcoalGray,
                      bgColor: softWarmWhite,
                      title: "Schedule",
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Container(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: softWarmWhite.withOpacity(0.21),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Affirmation for the Day",
                  style: Theme.of(context).textTheme.titleSmall?.copyWith(
                    color: softWarmWhite,
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  "I am capable of handling whatever comes my way today.",
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    color: softWarmWhite,

                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 20),
                Align(
                  alignment: Alignment.center,
                  child: CustomButton(
                    onPressed: () {},
                    width: 140,
                    textColor: charcoalGray,
                    bgColor: softWarmWhite,
                    title: "Affirm Now",
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
