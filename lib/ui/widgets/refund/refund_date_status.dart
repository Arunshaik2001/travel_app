import 'package:flutter/material.dart';
import 'package:travel_app/constants/index.dart';
import 'package:travel_app/ui/commons/index.dart';

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
