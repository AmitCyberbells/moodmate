import 'package:flutter/material.dart';
import 'package:moodmate/core/constants/colors.dart';

class MusicPage extends StatelessWidget {
  const MusicPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset("assets/images/menu.png", width: 25, height: 25),
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
          SizedBox(height: 20),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Calming  Playlist",
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                fontSize: 30,
                fontWeight: FontWeight.w500,
                color: softWarmWhite,
              ),
            ),
          ),
          SizedBox(height: 20),
          Image.asset("assets/images/song.png", width: size.width / 1.5),
          SizedBox(height: 10),
          Text(
            "Rain On Glass",
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
              fontSize: 35,
              fontWeight: FontWeight.w500,
              color: softWarmWhite,
            ),
          ),
          Text(
            "By: Painting with Passion",
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
              fontWeight: FontWeight.w400,
              color: softWarmWhite,
            ),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.shuffle_rounded, size: 25, color: orange),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.fast_rewind_rounded, size: 25, color: orange),
              ),
              Container(
                height: 75,
                width: 75,
                decoration: BoxDecoration(
                  color: softWarmWhite,
                  borderRadius: BorderRadius.circular(100),
                ),
                child: Icon(Icons.pause_rounded, size: 50, color: orange),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.fast_forward_rounded, size: 25, color: orange),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.repeat_rounded, size: 25, color: orange),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
