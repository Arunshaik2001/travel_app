import 'package:flutter/material.dart';
import 'package:travel_app/constants/index.dart';

class PillWidget extends StatelessWidget {
  final String text;
  final Color color;
  final double borderRadius;
  final EdgeInsets padding;
  final double pillWidth;
  final TextStyle? textStyle;

  PillWidget({super.key,
    required this.text,
    required this.color,
    this.borderRadius = 20.0,
    this.pillWidth = 100,
    this.textStyle,
    this.padding = const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: pillWidth,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      child: Padding(
        padding: padding,
        child: Center(
          child: Text(
            text,
            style: textStyle ?? TextStyles.pillTextStyle,
          ),
        ),
      ),
    );
  }
}