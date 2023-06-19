import 'package:flutter/material.dart';
import 'package:travel_app/constants/app_colors.dart';
import 'package:travel_app/ui/commons/concentric_circle_widget.dart';
import 'package:travel_app/ui/commons/dashed_line.dart';
import 'package:travel_app/ui/commons/index.dart';
import 'package:travel_app/ui/widgets/journey/pill.dart';
import 'package:travel_app/utils/string_utils.dart';

class SubPointDetails extends StatelessWidget {
  bool showLeftDot, showRightDot;
  Color? leftPointInnerColor, rightPointInnerColor;
  Color? leftPointOuterColor, rightPointOuterColor;
  double? lineLength;
  bool isLeftLineDashed, isRightLineDashed;
  String? pillText;
  Color? pillColor;
  TextStyle? pillTextStyle;
  double pillBorderRadius;
  double? leftPointOuterRadius, leftPointInnerRadius;
  double? rightPointOuterRadius, rightPointInnerRadius;
  double dashLength;
  Color? dashColor;

  SubPointDetails(
      {this.showLeftDot = true,
      this.showRightDot = true,
      this.leftPointInnerColor,
      this.rightPointInnerColor,
      this.leftPointOuterColor,
      this.rightPointOuterColor,
      this.lineLength = 85,
      this.isLeftLineDashed = false,
      this.isRightLineDashed = false,
      required this.pillText,
      this.pillColor = AppColors.lightBlue,
      this.pillTextStyle,
      this.pillBorderRadius = 20.0,
      this.leftPointOuterRadius,
      this.leftPointInnerRadius,
      this.rightPointOuterRadius,
      this.rightPointInnerRadius,
      this.dashLength = 8,
      this.dashColor = AppColors.deepOrange});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (showLeftDot)
          ConcentricCircleWidget(
              outerRadius: leftPointOuterRadius ?? 10,
              innerRadius: leftPointOuterRadius ?? 15,
              outerColor: leftPointOuterColor ?? Colors.deepOrange,
              innerColor: leftPointInnerColor ?? Colors.orangeAccent),
        if (isLeftLineDashed)
          DashedLineWidget(
              direction: Axis.horizontal,
              length: lineLength!,
              dashLength: dashLength,
              dashColor: dashColor!),
        if (!isLeftLineDashed)
          LineWidget(
              isVertical: false,
              height: lineLength!,
              width: 1,
              color: dashColor!),
        if (pillText.isNotNullNorEmpty())
          PillWidget(
            text: pillText!, //'01h 45m'
            color: pillColor ?? AppColors.lightBlue,
            borderRadius: pillBorderRadius,
            padding:
                const EdgeInsets.symmetric(horizontal: 10.0, vertical: 8.0),
          ),
        if (isRightLineDashed)
          DashedLineWidget(
              direction: Axis.horizontal,
              length: lineLength!,
              dashLength: dashLength,
              dashColor: dashColor!), //Colors.deepOrange
        if (!isRightLineDashed)
          LineWidget(
              isVertical: false,
              height: lineLength!,
              width: 1,
              color: dashColor!),
        if (showRightDot)
          ConcentricCircleWidget(
              outerRadius: rightPointOuterRadius ?? 10,
              innerRadius: rightPointOuterRadius ?? 15,
              outerColor: rightPointOuterColor ?? Colors.deepOrange,
              innerColor: rightPointInnerColor ?? Colors.orangeAccent),
      ],
    );
  }
}
