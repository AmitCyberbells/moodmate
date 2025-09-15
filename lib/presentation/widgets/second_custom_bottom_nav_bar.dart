import 'package:flutter/material.dart';
import 'package:moodmate/core/constants/colors.dart';
import 'package:moodmate/core/constants/fonts.dart';

class SecondCustomBottomNavBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;
  const SecondCustomBottomNavBar({
    required this.currentIndex,
    required this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      height: 80,
      width: size.width,
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: BoxDecoration(
        color: bottomNavigatorBox,
        borderRadius: BorderRadius.circular(40),
      ),

      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _buildNavItem(
            "assets/icons/home.png",
            "assets/icons/selected_home.png",
            "Home",
            0,
            context,
          ),
          _buildNavItem(
            "assets/icons/journal.png",
            "assets/icons/selected_journal.png",
            "Journal",
            1,
            context,
          ),
          _buildNavItem(
            "assets/icons/community.png",
            "assets/icons/selected_community.png",
            "Community",
            2,
            context,
          ),
          _buildNavItem(
            "assets/icons/caretool.png",
            "assets/icons/selected_caretool.png",
            "Care tool",
            3,
            context,
          ),
          _buildNavItem(
            "assets/icons/profile.png",
            "assets/icons/selected_profile.png",
            "Profile",
            4,
            context,
          ),
        ],
      ),
    );
  }

  Widget _buildNavItem(
    String image,
    String selectedImage,
    String label,
    int index,
    BuildContext context,
  ) {
    final isSelected = currentIndex == index;
    return GestureDetector(
      onTap: () => onTap(index),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              color: softWarmWhite.withOpacity(0.12),
              borderRadius: BorderRadius.circular(100),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  isSelected ? selectedImage : image,
                  width: 25,
                  height: 25,
                  scale: 3,
                  filterQuality: FilterQuality.high,
                ),

                isSelected
                    ? CircleAvatar(backgroundColor: softWarmWhite, radius: 2)
                    : Container(),
              ],
            ),
          ),
          Text(
            label,
            style: alegreyaSans(
              decoration: TextDecoration.none,
              fontSize: smallBody,
              color: softWarmWhite,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
