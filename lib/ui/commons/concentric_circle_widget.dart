import 'package:flutter/material.dart';


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
