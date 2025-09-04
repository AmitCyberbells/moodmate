import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  final IconData icon;
  final bool isCircular;
  final Color bgColor;
  final Color iconColor;
  final VoidCallback onPressed;
  const CustomIconButton({
    this.isCircular = false,
    required this.icon,
    required this.bgColor,
    required this.onPressed,
    required this.iconColor,

    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        margin: EdgeInsets.all(4),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: bgColor,
          borderRadius:
              isCircular
                  ? BorderRadius.circular(100)
                  : BorderRadius.circular(10),
          border:
              isCircular
                  ? Border.all(width: 1, color: bgColor)
                  : Border.all(width: 1, color: iconColor),
        ),
        child: Icon(icon, size: 14, color: iconColor),
      ),
    );
  }
}
