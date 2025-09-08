import 'package:flutter/material.dart';
import 'package:moodmate/core/constants/colors.dart';

class SettingListItem extends StatelessWidget {
  final VoidCallback onTap;
  final IconData icon;
  final String title;
  final bool isSwitch;
  final bool isLogout;
  const SettingListItem({
    required this.onTap,
    this.isSwitch = false,
    this.isLogout = false,
    required this.icon,
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
              Icon(icon, size: 25, color: softWarmWhite),
              SizedBox(width: 10),
              Text(
                title,
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: softWarmWhite,
                  fontWeight: FontWeight.w600,
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
