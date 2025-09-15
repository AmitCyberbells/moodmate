import 'package:flutter/material.dart';
import 'package:moodmate/core/constants/colors.dart';
import 'package:moodmate/core/constants/fonts.dart';

class SettingListItem extends StatelessWidget {
  final VoidCallback onTap;
  final String img;
  final String title;
  final bool isSwitch;
  final bool isLogout;
  const SettingListItem({
    required this.onTap,
    this.isSwitch = false,
    this.isLogout = false,
    required this.img,
    required this.title,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final bool value = false;
    return GestureDetector(
      onTap: onTap,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            children: [
              Image.asset(img, scale: 3),
              SizedBox(width: 10),
              Text(
                title,
                style: alegreyaSans(
                  fontSize: mediumBody,
                  color: softWarmWhite,
                  fontWeight: FontWeight.w400,
                  decoration: TextDecoration.none,
                ),
              ),
            ],
          ),
          isLogout
              ? Container()
              : isSwitch
              ? Material(
                color: Colors.transparent,
                child: Switch(value: value, onChanged: (value) {}),
              )
              : Icon(Icons.arrow_forward_ios, size: 25, color: softWarmWhite),
        ],
      ),
    );
  }
}
