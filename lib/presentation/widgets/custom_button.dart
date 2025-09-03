import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final Color bgColor;
  final Color textColor;
  final VoidCallback onPressed;
  const CustomButton({
    required this.onPressed,
    required this.textColor,
    required this.bgColor,
    required this.title,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          border: Border.all(width: 1, color: Colors.white),
        ),
        child: Container(
          alignment: Alignment.center,
          width: 110,
          margin: EdgeInsets.all(4),
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          decoration: BoxDecoration(
            color: bgColor,
            borderRadius: BorderRadius.circular(40),
            border: Border.all(width: 1, color: Colors.white),
          ),
          child: Text(
            title,
            style: Theme.of(
              context,
            ).textTheme.bodyMedium?.copyWith(color: textColor),
          ),
        ),
      ),
    );
  }
}
