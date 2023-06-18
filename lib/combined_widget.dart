import 'package:flutter/material.dart';
import 'package:travel_app/concentric_circle_widget.dart';
import 'package:travel_app/dashed_line.dart';
import 'package:travel_app/line_widget.dart';
import 'package:travel_app/pill.dart';

class CombinedWidget extends StatelessWidget {
  bool showLeftDot, showRightDot;

  CombinedWidget(
      {super.key, this.showLeftDot = true, this.showRightDot = true});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (showLeftDot)
          const ConcentricCircleWidget(
              outerRadius: 10,
              innerRadius: 15,
              outerColor: Colors.deepOrange,
              innerColor: Colors.orangeAccent),
        const DashedLineWidget(
            direction: Axis.horizontal,
            length: 80,
            dashLength: 8,
            dashColor: Colors.deepOrange),
        PillWidget(
          text: '01h 45m',
          color: const Color(0xffADD8E6),
          borderRadius: 20.0,
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 8.0),
        ),
        const DashedLineWidget(
            direction: Axis.horizontal,
            length: 80,
            dashLength: 8,
            dashColor: Colors.deepOrange),
        if (showRightDot)
          const ConcentricCircleWidget(
              outerRadius: 10,
              innerRadius: 15,
              outerColor: Colors.deepOrange,
              innerColor: Colors.orangeAccent),
      ],
    );
  }
}
