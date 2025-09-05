import 'package:flutter/material.dart';
import 'package:moodmate/core/constants/colors.dart';

class CustomTextfield extends StatelessWidget {
  final TextEditingController controller;
  final bool filled;
  final Color bgColor;
  final bool isPassword;
  final String hintText;
  final Color hintTextColor;
  final Color textColor;
  const CustomTextfield({
    this.filled = false,
    required this.hintTextColor,
    required this.textColor,
    this.bgColor = Colors.transparent,
    this.isPassword = false,
    required this.controller,
    required this.hintText,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: TextField(
        obscureText: isPassword,
        controller: controller,
        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
          color: textColor,
          fontWeight: FontWeight.w600,
        ),

        decoration: InputDecoration(
          fillColor: bgColor,
          filled: filled,
          suffixIcon:
              isPassword
                  ? Icon(Icons.remove_red_eye_rounded, color: charcoalGray)
                  : SizedBox(width: 0, height: 0),

          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(40),
            borderSide: BorderSide(color: softWarmWhite, width: 1),
          ),
          hintText: hintText,
          hintStyle: Theme.of(context).textTheme.bodyMedium?.copyWith(
            color: hintTextColor,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
