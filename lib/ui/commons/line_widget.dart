import 'package:flutter/material.dart';

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