import 'package:flutter/material.dart';
import 'package:travel_app/ui/commons/widget_size.dart';

import '../../../data/journey/indicator_data.dart';
import '../../commons/concentric_circle_widget.dart';
import '../../commons/dashed_line.dart';
import '../../commons/line_widget.dart';
import 'indicator_details.dart';

class IndicatorSubPoint extends StatefulWidget {
  Color? innerColor;
  Color? outerColor;
  double? innerRadius;
  double? outerRadius;
  IndicatorData indicatorData;
  bool isLeftLineDashed;
  bool isRightLineDashed;
  bool showLeftLine;
  bool showRightLine;
  double dashLength;
  Color leftDashColor;
  Color rightDashColor;
  CrossAxisAlignment crossAxisAlignment;

  IndicatorSubPoint({
    super.key,
    required this.indicatorData,
    this.outerRadius,
    this.innerRadius,
    this.innerColor,
    this.outerColor,
    this.isLeftLineDashed = false,
    this.isRightLineDashed = false,
    this.showLeftLine = true,
    this.showRightLine = true,
    required this.dashLength,
    required this.leftDashColor,
    required this.rightDashColor,
    required this.crossAxisAlignment,
  });

  @override
  State<IndicatorSubPoint> createState() => _IndicatorSubPointState();
}

class _IndicatorSubPointState extends State<IndicatorSubPoint> {
  Size? textSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 11),
      child: Column(
        crossAxisAlignment: widget.crossAxisAlignment,
        children: [
          Row(
            children: [
              if (!widget.isLeftLineDashed && widget.showLeftLine)
                LineWidget(
                    isVertical: false,
                    height: lineWidth(
                        textSize, widget.showLeftLine, widget.showRightLine),
                    width: 2,
                    color: widget.leftDashColor),
              if (widget.isLeftLineDashed && widget.showLeftLine)
                DashedLineWidget(
                  direction: Axis.horizontal,
                  length: lineWidth(
                      textSize, widget.showLeftLine, widget.showRightLine),
                  dashLength: widget.dashLength,
                  dashColor: widget.leftDashColor,
                  dashThickness: 2,
                ),
              ConcentricCircleWidget(
                  outerRadius: widget.outerRadius ?? 10,
                  innerRadius: widget.innerRadius ?? 15,
                  outerColor: widget.outerColor ?? Colors.deepOrange,
                  innerColor: widget.innerColor ?? Colors.orangeAccent),
              if (!widget.isRightLineDashed && widget.showRightLine)
                LineWidget(
                    isVertical: false,
                    height: lineWidth(
                        textSize, widget.showLeftLine, widget.showRightLine),
                    width: 2,
                    color: widget.rightDashColor),
              if (widget.isRightLineDashed && widget.showRightLine)
                DashedLineWidget(
                  direction: Axis.horizontal,
                  length: lineWidth(
                      textSize, widget.showLeftLine, widget.showRightLine),
                  dashLength: widget.dashLength,
                  dashColor: widget.rightDashColor,
                  dashThickness: 2,
                ),
            ],
          ),
          const SizedBox(
            height: 50,
          ),
          WidgetSize(
            onChange: (size) => {
              setState(() => {textSize = size})
            },
            child: IndicatorDetails(
              time: widget.indicatorData.time,
              date: widget.indicatorData.date,
              location: widget.indicatorData.location,
              place: widget.indicatorData.place,
              timeTextStyle: widget.indicatorData.timeTextStyle,
              dateTextStyle: widget.indicatorData.dateTextStyle,
              locationTextStyle: widget.indicatorData.locationTextStyle,
              placeTextStyle: widget.indicatorData.placeTextStyle,
            ),
          ),
          const SizedBox(
            height: 50,
          ),
        ],
      ),
    );
  }

  double lineWidth(Size? size, bool showLeftLine, bool showRightLine) {
    if (size != null) {
      if(!showRightLine){
        return size.width > 85 ? size.width : 85;
      }
      return size.width > 85 ? size.width / 2 : 85;
    }
    return 85;
  }
}
