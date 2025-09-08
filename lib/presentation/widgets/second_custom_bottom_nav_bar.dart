import 'package:flutter/material.dart';
import 'package:moodmate/core/constants/colors.dart';

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
          _buildNavItem(Icons.home, "Home", 0, context),
          _buildNavItem(Icons.book, "Journal", 1, context),
          _buildNavItem(Icons.music_note_rounded, "Music", 2, context),
          _buildNavItem(Icons.person, "Community", 3, context),
          _buildNavItem(Icons.settings_outlined, "Tool", 4, context),
        ],
      ),
    );
  }

  Widget _buildNavItem(
    IconData icon,
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
            width: isSelected ? 40 : 30,
            height: isSelected ? 40 : 30,
            decoration: BoxDecoration(
              color: softWarmWhite.withOpacity(0.12),
              borderRadius: BorderRadius.circular(100),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(icon, size: isSelected ? 35 : 25, color: softWarmWhite),
                isSelected
                    ? CircleAvatar(backgroundColor: softWarmWhite, radius: 2)
                    : Container(),
              ],
            ),
          ),
          Text(
            label,
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
              fontWeight: FontWeight.w500,
              color: softWarmWhite,
            ),
          ),
        ],
      ),
    );
  }
}
