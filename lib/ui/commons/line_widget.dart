import 'package:flutter/material.dart';

///renders a straight line widget.
///
/// parameters:
/// **isVertical** - is the orientation of the line.
/// **height**     - is the length of the line.
/// **width**      - is the width of the line.
/// **color**      - is the color of the line.
class LineWidget extends StatelessWidget {
  final bool isVertical;
  final double height;
  final double width;
  final Color color;

  const LineWidget({super.key,
    required this.isVertical,
    required this.height,
    required this.width,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: isVertical ? width : height,
      height: isVertical ? height : width,
      color: color,
    );
  }
}