import 'package:flutter/material.dart';
import 'package:travel_app/constants/index.dart';
import 'package:travel_app/ui/commons/index.dart';
import 'package:travel_app/ui/commons/widget_size.dart';

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
class RefundDateStatus extends StatefulWidget {
  bool showMainTopLine;
  bool showIndicatorTopLine;
  bool showIndicatorBottomLine;
  CrossAxisAlignment crossAxisAlignment;
  Color? lineColor;
  double? lineHeight;
  double lineWidth;
  Color? indicatorInnerColor;
  Color? indicatorOuterColor;
  String title;
  String description;
  TextStyle? titleTextStyle;
  TextStyle? descriptionTextStyle;
  double? innerTopLineHeight;
  double? innerBottomLineHeight;

  RefundDateStatus({
    super.key,
    required this.title,
    required this.description,
    this.showMainTopLine = true,
    this.showIndicatorTopLine = true,
    this.showIndicatorBottomLine = true,
    this.crossAxisAlignment = CrossAxisAlignment.center,
    this.lineColor,
    this.lineHeight,
    this.lineWidth = 3,
    this.indicatorInnerColor,
    this.indicatorOuterColor,
    this.titleTextStyle,
    this.descriptionTextStyle,
    this.innerTopLineHeight,
    this.innerBottomLineHeight,
  });

  @override
  State<RefundDateStatus> createState() => _RefundDateStatusState();
}

class _RefundDateStatusState extends State<RefundDateStatus> {
  Size? textSize;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (widget.showMainTopLine)
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.only(left: 6),
                child: LineWidget(
                    isVertical: true,
                    height: widget.lineHeight ?? 45,
                    width: widget.lineWidth,
                    color: widget.lineColor ?? Colors.green),
              ),
            ],
          ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: widget.crossAxisAlignment,
          children: [
            Column(
              children: [
                if (widget.showIndicatorTopLine)
                  LineWidget(
                      isVertical: true,
                      height: textSize != null ? ((textSize!.height)/ 2) : 10,
                      width: 3,
                      color: widget.lineColor ?? Colors.green),
                ConcentricCircleWidget(
                  outerRadius: 10,
                  innerRadius: 15,
                  outerColor: widget.indicatorOuterColor ?? AppColors.red,
                  innerColor: widget.indicatorInnerColor ?? AppColors.lightRed,
                ),
                if (widget.showIndicatorBottomLine)
                  LineWidget(
                      isVertical: true,
                      height: textSize != null ? ((textSize!.height)/ 2) : 10,
                      width: 3,
                      color: widget.lineColor ?? Colors.green)
              ],
            ),
            WidgetSize(
                onChange: (Size size) {
                  setState(() {
                    textSize = size;
                  });
                },
                child: Expanded(
                  child: Container(
                    margin: const EdgeInsets.only(left: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: widget.crossAxisAlignment,
                      children: [
                        Flexible(
                          child: Text(
                            widget.title,
                            style: widget.titleTextStyle,
                          ),
                        ),
                        Flexible(
                          child: Text(
                            widget.description,
                            textAlign: TextAlign.end,
                            style: widget.descriptionTextStyle,
                          ),
                        ),
                      ],
                    ),
                  ),
                ))
          ],
        )
      ],
    );
  }
}
