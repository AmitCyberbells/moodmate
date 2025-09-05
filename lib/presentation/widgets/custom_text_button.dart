import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  final String title;
  final Color bgColor;
  final Color textColor;
  final String? img;
  final double size;
  final VoidCallback onPressed;
  final bool isIcon;
  final Color? borderColor;
  const CustomTextButton({
    this.img,
    this.borderColor,
    this.isIcon = false,
    this.size = 25,
    required this.bgColor,
    required this.onPressed,
    required this.textColor,
    required this.title,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        margin: EdgeInsets.all(4),
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(width: 1, color: borderColor ?? textColor),
        ),
        child: Row(
          children: [
            isIcon ? Image.asset(img!, width: size, height: size) : Container(),
            isIcon ? SizedBox(width: 5) : Container(),
            Text(title, style: Theme.of(context).textTheme.bodyMedium),
          ],
        ),
      ),
    );
  }
}
