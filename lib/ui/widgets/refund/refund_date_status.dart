import 'package:flutter/material.dart';
import 'package:travel_app/constants/index.dart';
import 'package:travel_app/ui/commons/index.dart';

///render refund status date widget.
///
/// parameters:
/// **showMainTopLine**          - is the check whether to show top line.
/// **showIndicatorTopLine**     - is the check whether to show indicator top line.
/// **showIndicatorBottomLine**  - is the check whether to show indicator bottom line.
/// **crossAxisAlignment**       - is the crossAxisAlignment of the row.
/// **lineColor**                - is the line color.
/// **lineHeight**               - is the line height.
/// **lineWidth**                - is the line width.
/// **indicatorInnerColor**      - is the indicator inner color.
/// **indicatorOuterColor**      - is the indicator outer color.
/// **title**                    - is the title of refund status.
/// **description**              - is the description of refund status
/// **titleTextStyle**           - is the title text style of refund status.
/// **descriptionTextStyle**     - is the description text style of refund status.
class RefundDateStatus extends StatelessWidget {
  bool showMainTopLine;
  bool showIndicatorTopLine;
  bool showIndicatorBottomLine;
  CrossAxisAlignment crossAxisAlignment;
  Color? lineColor;
  double lineHeight;
  double lineWidth;
  Color? indicatorInnerColor;
  Color? indicatorOuterColor;
  String title;
  String description;
  TextStyle? titleTextStyle;
  TextStyle? descriptionTextStyle;

  RefundDateStatus(
      {super.key,
      required this.title,
      required this.description,
      this.showMainTopLine = true,
      this.showIndicatorTopLine = true,
      this.showIndicatorBottomLine = true,
      this.crossAxisAlignment = CrossAxisAlignment.center,
      this.lineColor,
      this.lineHeight = 45,
      this.lineWidth = 3,
      this.indicatorInnerColor,
      this.indicatorOuterColor,
      this.titleTextStyle,
      this.descriptionTextStyle});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (showMainTopLine)
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.only(left: 6),
                child: LineWidget(
                    isVertical: true,
                    height: lineHeight,
                    width: lineWidth,
                    color: lineColor ?? Colors.green),
              ),
            ],
          ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: crossAxisAlignment,
          children: [
            Column(
              children: [
                if (showIndicatorTopLine)
                  LineWidget(
                      isVertical: true,
                      height: 10,
                      width: 3,
                      color: lineColor ?? Colors.green),
                ConcentricCircleWidget(
                  outerRadius: 10,
                  innerRadius: 15,
                  outerColor: indicatorOuterColor ?? AppColors.red,
                  innerColor: indicatorInnerColor ?? AppColors.lightRed,
                ),
                if (showIndicatorBottomLine)
                  LineWidget(
                      isVertical: true,
                      height: 10,
                      width: 3,
                      color: lineColor ?? Colors.green)
              ],
            ),
            Expanded(
              child: Container(
                margin: const EdgeInsets.only(left: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: crossAxisAlignment,
                  children: [
                    Flexible(
                      child: Text(
                        title,
                        style: titleTextStyle,
                      ),
                    ),
                    Flexible(
                      child: Text(
                        description,
                        textAlign: TextAlign.end,
                        style: descriptionTextStyle,
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        )
      ],
    );
  }
}
