import 'package:flutter/material.dart';

class BgCard extends StatelessWidget {
  final Widget widget;
  final Color bgcolor;
  const BgCard({required this.bgcolor, required this.widget, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: bgcolor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: widget,
    );
  }
}
