import 'package:flutter/material.dart';
import 'package:moodmate/core/constants/colors.dart';
import 'package:moodmate/presentation/screens/home/home_state.dart';
import 'package:moodmate/presentation/screens/home/widgets/mood_widget.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final provider = context.read<HomeState>();

    return Padding(
      padding: EdgeInsets.all(20),
      child: ListView(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: size.width / 2,
                child: Text(
                  "Hi!, Siya. How’s your mental vibe today?",
                  style: Theme.of(context).textTheme.titleSmall?.copyWith(
                    color: softWarmWhite,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
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
            ],
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: size.width / 2,
                child: Text(
                  "Select your virtual pet",
                  style: Theme.of(context).textTheme.titleSmall?.copyWith(
                    color: softWarmWhite,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  provider.navigationToSelectPetPage(context);
                },
                child: Container(
                  width: 50,
                  height: 50,
                  padding: EdgeInsets.all(3),
                  decoration: BoxDecoration(
                    color: softWarmWhite,
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: Icon(
                    Icons.arrow_forward,
                    size: 25,
                    color: charcoalGray,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
