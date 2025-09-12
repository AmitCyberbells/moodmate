import 'package:flutter/material.dart';
import 'package:moodmate/core/constants/colors.dart';

class BgCard extends StatelessWidget {
  final Widget widget;
  final Color bgcolor;
  final String? bgImg;
  const BgCard({
    this.bgImg,
    required this.bgcolor,
    required this.widget,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: bgcolor,
        borderRadius: BorderRadius.circular(20),

        image:
            bgImg != null
                ? DecorationImage(
                  image: AssetImage(bgImg!),
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(
                    softWarmWhite.withOpacity(0.2),
                    BlendMode.dstATop,
                  ),
                )
                : null,
      ),

      child: widget,
    );
  }
}
