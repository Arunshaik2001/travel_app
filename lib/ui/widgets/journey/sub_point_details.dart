import 'package:flutter/material.dart';
import 'package:travel_app/constants/index.dart';
import 'package:travel_app/ui/commons/index.dart';
import 'package:travel_app/ui/widgets/journey/index.dart';
import 'package:travel_app/utils/index.dart';

///render pill widget, lines, circles widgets combine to reflect a whole sub-point.
///
/// parameters:
/// **showLeftDot**            - is the check whether to show left dot.
/// **showRightDot**           - is the check whether to show right dot.
/// **leftPointInnerColor**    - is the left point inner color.
/// **rightPointInnerColor**   - is the right point inner color.
/// **leftPointOuterColor**    - is the left point outer color.
/// **rightPointOuterColor**   - is the right point outer color.
/// **lineLength**             - is the line length.
/// **isLeftLineDashed**       - is the check whether left line is dashed or not.
/// **isRightLineDashed**      - is the check whether right line is dashed or not.
/// **pillText**               - is the text of pill.
/// **pillColor**              - is the text of pill color.
/// **pillTextStyle**          - is the text style of pill text.
/// **pillBorderRadius**       - is the border radius of pill.
/// **leftPointOuterRadius**   - is the left point outer radius.
/// **leftPointInnerRadius**   - is the left point inner radius.
/// **rightPointOuterRadius**  - is the right point outer radius.
/// **rightPointInnerRadius**  - is the right point inner radius.
/// **dashLength**             - is the dash length.
/// **dashColor**              - is the dash color.
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
      {super.key, this.showLeftDot = true,
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
            text: pillText!,
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
              dashColor: dashColor!),
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
