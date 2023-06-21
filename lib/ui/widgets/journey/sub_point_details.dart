import 'package:flutter/material.dart';
import 'package:travel_app/constants/index.dart';
import 'package:travel_app/ui/commons/index.dart';
import 'package:travel_app/ui/widgets/journey/index.dart';
import 'package:travel_app/ui/widgets/journey/indicator_sub_point.dart';
import 'package:travel_app/utils/index.dart';

import '../../../data/journey/indicator_data.dart';
import '../../../data/journey/journey_detail.dart';
import '../../commons/widget_size.dart';

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
class SubPointDetails extends StatefulWidget {
  bool showLeftDot, showRightDot;
  Color? leftPointInnerColor, rightPointInnerColor;
  Color? leftPointOuterColor, rightPointOuterColor;
  double? lineLength;
  bool? isLeftLineDashed, isRightLineDashed;
  String? pillText;
  Color? pillColor;
  TextStyle? pillTextStyle;
  double pillBorderRadius;
  double? leftPointOuterRadius, leftPointInnerRadius;
  double? rightPointOuterRadius, rightPointInnerRadius;
  double dashLength;
  Color? dashColor;
  Color? indicatorLeftDashColor;
  Color? indicatorRightDashColor;
  IndicatorData indicatorDataLeft;
  int index, listCount;
  bool? isIndicatorLeftLineDashed;
  bool? isIndicatorRightLineDashed;
  bool showPillData;
  IndicatorData? indicatorDataRight;
  void Function(Size) onIndicatorSizeChange;

  SubPointDetails(
      {super.key,
      this.showLeftDot = true,
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
      this.dashColor = AppColors.deepOrange,
      required this.indicatorDataLeft,
      required this.listCount,
      required this.index,
      this.indicatorLeftDashColor,
      this.indicatorRightDashColor,
      this.isIndicatorLeftLineDashed,
      this.isIndicatorRightLineDashed,
      this.showPillData = true,
      this.indicatorDataRight,
      required this.onIndicatorSizeChange});

  @override
  State<SubPointDetails> createState() => _SubPointDetailsState();
}

class _SubPointDetailsState extends State<SubPointDetails> {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (widget.showLeftDot)
          WidgetSize(
            onChange: (size) {
              widget.onIndicatorSizeChange(size);
            },
            child: IndicatorSubPoint(
              indicatorData: widget.indicatorDataLeft,
              outerColor: widget.leftPointOuterColor,
              innerColor: widget.leftPointInnerColor,
              outerRadius: widget.leftPointOuterRadius,
              innerRadius: widget.leftPointInnerRadius,
              dashLength: widget.dashLength,
              leftDashColor: widget.indicatorLeftDashColor!,
              rightDashColor: widget.indicatorRightDashColor!,
              isLeftLineDashed: widget.isIndicatorLeftLineDashed!,
              isRightLineDashed: widget.isIndicatorRightLineDashed!,
              showLeftLine:
                  showLeftIndicatorLine(widget.index, widget.listCount),
              showRightLine:
                  showRightIndicatorLine(widget.index, widget.listCount),
              crossAxisAlignment:
                  setIndicatorCrossAxis(widget.index, widget.listCount),
            ),
          ),
        if (widget.showPillData)
          Row(
            children: [
              if (widget.isLeftLineDashed!)
                DashedLineWidget(
                  direction: Axis.horizontal,
                  length: widget.lineLength!,
                  dashLength: widget.dashLength,
                  dashColor: widget.dashColor!,
                  dashThickness: 2,
                ),
              if (!widget.isLeftLineDashed!)
                LineWidget(
                    isVertical: false,
                    height: ((widget.lineLength ?? 0) > 85)
                        ? widget.lineLength!
                        : 85,
                    width: 2,
                    color: widget.dashColor!),
              if (widget.pillText.isNotNullNorEmpty())
                PillWidget(
                  text: widget.pillText!,
                  color: widget.pillColor ?? AppColors.lightBlue,
                  borderRadius: widget.pillBorderRadius,
                  padding: const EdgeInsets.symmetric(
                      horizontal: 10.0, vertical: 8.0),
                ),
              if (widget.isRightLineDashed!)
                DashedLineWidget(
                  direction: Axis.horizontal,
                  length: widget.lineLength!,
                  dashLength: widget.dashLength!,
                  dashColor: widget.dashColor!,
                  dashThickness: 2,
                ),
              if (!widget.isRightLineDashed!)
                LineWidget(
                    isVertical: false,
                    height: ((widget.lineLength ?? 0) > 85)
                        ? widget.lineLength!
                        : 85,
                    width: 2,
                    color: widget.dashColor!),
            ],
          ),
        if (widget.showRightDot)
          IndicatorSubPoint(
            indicatorData: widget.indicatorDataRight!,
            outerColor: widget.leftPointOuterColor,
            innerColor: widget.leftPointInnerColor,
            outerRadius: widget.leftPointOuterRadius,
            innerRadius: widget.leftPointInnerRadius,
            dashLength: widget.dashLength,
            leftDashColor: widget.dashColor!,
            rightDashColor: Colors.transparent,
            isLeftLineDashed: widget.isLeftLineDashed!,
            showLeftLine: showLeftIndicatorLine(widget.index, widget.listCount),
            showRightLine: true,
            crossAxisAlignment:
                setIndicatorCrossAxis(widget.index, widget.listCount),
          ),
      ],
    );
  }

  CrossAxisAlignment setIndicatorCrossAxis(index, listCount) {
    if (index == 0) {
      return CrossAxisAlignment.center;
    } else if (index == listCount - 1) {
      return CrossAxisAlignment.center;
    }
    return CrossAxisAlignment.center;
  }

  bool showRightIndicatorLine(index, listCount) {
    if (index >= 0 && index <= listCount - 1) {
      return true;
    }
    return false;
  }

  bool showLeftIndicatorLine(index, listCount) {
    if (index >= 0 && index <= listCount - 1) {
      return true;
    }
    return false;
  }
}
