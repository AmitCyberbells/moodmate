import 'package:flutter/material.dart';
import 'package:moodmate/core/constants/colors.dart';

class CustomTextfield extends StatefulWidget {
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
        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
          color: widget.textColor,
          fontWeight: FontWeight.w600,
        ),
        decoration: InputDecoration(
          fillColor: widget.bgColor,
          filled: widget.filled,
          suffixIcon:
              widget.isPassword
                  ? IconButton(
                    onPressed: () {
                      setState(() {
                        _isShowPsw = !_isShowPsw;
                      });
                    },
                    icon: Icon(
                      _isShowPsw
                          ? Icons.visibility_off
                          : Icons.visibility_rounded,
                      color: widget.textColor,
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
          hintStyle: Theme.of(context).textTheme.bodyMedium?.copyWith(
            color: widget.hintTextColor,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
