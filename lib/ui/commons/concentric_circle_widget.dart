import 'package:flutter/material.dart';

///concentric circles widget.
///
/// parameters:
/// **outerRadius** - is the radius of smaller circle.
/// **innerRadius** - is the radius of bigger circle.
/// **innerColor**  - is the color of smaller circle.
/// **outerColor**  - is the color of bigger circle.
class ConcentricCircleWidget extends StatelessWidget {
  final double outerRadius;
  final double innerRadius;
  final Color outerColor;
  final Color innerColor;

  const ConcentricCircleWidget({super.key,
    required this.outerRadius,
    required this.innerRadius,
    required this.outerColor,
    required this.innerColor,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: innerRadius,
      height: innerRadius,
      child: Stack(
        children: [
          Center(
            child: Container(
              width: innerRadius,
              height: innerRadius,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: innerColor,
              ),
            ),
          ),
          Center(
            child: Container(
              width: outerRadius,
              height: outerRadius,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: outerColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
