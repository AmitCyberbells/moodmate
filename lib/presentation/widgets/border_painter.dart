import 'package:flutter/material.dart';
import 'package:moodmate/core/constants/colors.dart';

class BorderPainter extends CustomPainter {
  final double progress;

  BorderPainter({required this.progress});

  @override
  void paint(Canvas canvas, Size size) {
    const strokeWidth = 2.0;

    final rect = Rect.fromLTWH(0, 0, size.width, size.height);

    final rRect = RRect.fromRectAndRadius(rect, const Radius.circular(40));

    final paint =
        Paint()
          ..color = softWarmWhite
          ..strokeWidth = strokeWidth
          ..style = PaintingStyle.stroke;

    final path = Path()..addRRect(rRect);

    for (final pathMetrics in path.computeMetrics()) {
      final extractLength = pathMetrics.length * progress;
      final animatedPath = pathMetrics.extractPath(100, extractLength);
      canvas.drawPath(animatedPath, paint);
    }
  }

  @override
  bool shouldRepaint(covariant BorderPainter oldDelegate) {
    return oldDelegate.progress != progress;
  }
}
