import 'package:flutter/material.dart';
import 'package:moodmate/core/constants/colors.dart';

class CustomTextfield extends StatelessWidget {
  final TextEditingController controller;
  final bool isPassword;
  final String hintText;
  final IconData prefixIcon;
  const CustomTextfield({
    this.isPassword = false,
    required this.prefixIcon,
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
          color: softWarmWhite,
          fontWeight: FontWeight.w700,
        ),
        decoration: InputDecoration(
          fillColor: bgBrown,
          filled: true,
          prefixIcon: Icon(prefixIcon, size: 24, color: softWarmWhite),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(40),
            borderSide: BorderSide(color: bgBrown, width: 1),
          ),
          hintText: hintText,
          hintStyle: Theme.of(context).textTheme.bodyMedium?.copyWith(
            color: softWarmWhite,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}
