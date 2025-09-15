import 'package:flutter/material.dart';
import 'package:moodmate/core/constants/colors.dart';
import 'package:moodmate/core/constants/fonts.dart';

class CustomTextfield extends StatefulWidget {
  final TextEditingController controller;
  final bool filled;
  final Color bgColor;
  final bool isPassword;
  final String hintText;
  final Color hintTextColor;
  final Color textColor;
  final String prefixIcon;
  const CustomTextfield({
    required this.prefixIcon,
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
  State<CustomTextfield> createState() => _CustomTextfieldState();
}

class _CustomTextfieldState extends State<CustomTextfield> {
  bool _isShowPsw = false;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: TextField(
        controller: widget.controller,
        obscureText: widget.isPassword && !_isShowPsw,
        style: nunito(
          fontSize: mediumBody,
          color: softWarmWhite,
          fontWeight: FontWeight.w700,
        ),
        decoration: InputDecoration(
          fillColor: widget.bgColor,
          filled: widget.filled,
          prefixIcon: Image.asset(widget.prefixIcon, scale: 3),
          suffixIcon:
              widget.isPassword
                  ? IconButton(
                    onPressed: () {
                      setState(() {
                        _isShowPsw = !_isShowPsw;
                      });
                    },
                    icon: Image.asset(
                      _isShowPsw
                          ? "assets/icons/show_password.png"
                          : "assets/icons/show_password.png",
                      color: widget.textColor,
                      width: 20,
                      height: 20,
                    ),
                  )
                  : null,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(40),
            borderSide: BorderSide(color: softWarmWhite, width: 1),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(40),
            borderSide: BorderSide(color: softWarmWhite, width: 1),
          ),
          hintText: widget.hintText,
          hintStyle: nunito(
            fontSize: mediumBody,
            color: textfieldHintColor,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}
