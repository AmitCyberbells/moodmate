import 'package:flutter/material.dart';
import 'package:moodmate/core/constants/fonts.dart';
import 'package:moodmate/presentation/widgets/border_painter.dart';

class CustomAnimatedButton extends StatelessWidget {
  final String title;
  final Color bgColor;
  final Color textColor;
  final VoidCallback onPressed;
  final double? width;
  const CustomAnimatedButton({
    this.width,
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
      child: TweenAnimationBuilder(
        tween: Tween(begin: 0.0, end: 0.89),
        curve: Curves.linear,
        duration: const Duration(seconds: 4),
        builder: (context, value, child) {
          return CustomPaint(
            painter: BorderPainter(progress: value),
            child: Container(
              alignment: Alignment.center,
              width: width,
              margin: EdgeInsets.all(5),
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              decoration: BoxDecoration(
                color: bgColor,
                borderRadius: BorderRadius.circular(40),
                border: Border.all(width: 1, color: Colors.white),
              ),
              child: Text(
                title,
                style: atkinsonHyperlegible(
                  decoration: TextDecoration.none,
                  fontSize: mediumBody,
                  color: textColor,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
