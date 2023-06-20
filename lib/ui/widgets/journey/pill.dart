import 'package:flutter/material.dart';
import 'package:travel_app/constants/index.dart';

///render pill widget between two lines.
///
/// parameters:
/// **text**            - is the text in the pill.
/// **color**           - is the color of the pill.
/// **borderRadius**    - is the border radius of the pill.
/// **padding**         - is the padding of the pill.
/// **pillWidth**       - is the width of the pill.
/// **textStyle**       - is the text style used.
class PillWidget extends StatelessWidget {
  final String text;
  final Color color;
  final double borderRadius;
  final EdgeInsets padding;
  final double pillWidth;
  final TextStyle? textStyle;

  const PillWidget({super.key,
    required this.text,
    required this.color,
    this.borderRadius = 20.0,
    this.pillWidth = 150,
    this.textStyle,
    this.padding = const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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