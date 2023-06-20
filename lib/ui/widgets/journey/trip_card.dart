import 'package:flutter/material.dart';
import 'package:travel_app/constants/index.dart';
import 'package:travel_app/ui/commons/widget_size.dart';
import 'package:travel_app/ui/widgets/journey/index.dart';
import 'package:travel_app/utils/index.dart';
import 'package:travel_app/data/journey/index.dart';
import 'dart:math';

class TripCard extends StatefulWidget {
  TripData tripData;

  TripCard({super.key, required this.tripData});

  @override
  State<TripCard> createState() => _TripCardState();
}

class _TripCardState extends State<TripCard> {
  Size? textSize;
  Size? subPointSize;

  @override
  Widget build(BuildContext context) {
    if (widget.tripData.destinationCount <= 0) {
      return const SizedBox.shrink();
    }
    return IntrinsicHeight(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Card(
          elevation: widget.tripData.cardElevation ?? 2.0,
          color: widget.tripData.cardColor ?? AppColors.tripCardBg,
          shape: RoundedRectangleBorder(
            borderRadius:
                BorderRadius.circular(widget.tripData.cardBorderRadius ?? 25.0),
            side: BorderSide(
              color:
                  widget.tripData.cardBorderColor ?? AppColors.tripCardBorder,
              width: widget.tripData.cardBorderWidth ?? 1.0,
            ),
          ),
          child: Container(
            padding: const EdgeInsets.all(80),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                widget.tripData.destinationCount-1,
                (index) => Column(
                  children: [
                    if (widget.tripData.journeyDetails.isNotNullNorEmpty())
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.only(
                            left: calculateLeftGap(
                                index, widget.tripData.destinationCount),
                          ),
                          child: WidgetSize(
                              onChange: (size) => {
                                    setState(() => {textSize = size})
                                  },
                              child: JourneyDetails(
                                imagePath: widget
                                    .tripData.journeyDetails[index].imagePath,
                                title: widget
                                    .tripData.journeyDetails[index].title,
                                description: widget.tripData
                                    .journeyDetails[index].description,
                                titleTextStyle: widget.tripData
                                    .journeyDetails[index].titleTextStyle,
                                descriptionTextStyle: widget
                                    .tripData
                                    .journeyDetails[index]
                                    .descriptionTextStyle,
                              )),
                        ),
                      ),
                    const SizedBox(
                      height: 20,
                    ),
                    WidgetSize(
                      onChange: (size) {
                        setState(() {
                          subPointSize = size;
                        });
                      },
                      child: SubPointDetails(
                        index: index,
                        listCount: widget.tripData.destinationCount,
                        pillText: widget
                            .tripData.subPointDetails[index].pillData?.text,
                        pillColor: widget.tripData.subPointDetails[index]
                            .pillData?.color,
                        showRightDot: showRightDot(
                            index, widget.tripData.destinationCount),
                        showLeftDot: showLeftDot(
                            index, widget.tripData.destinationCount),
                        dashColor: widget
                            .tripData.subPointDetails[index].dashColor,
                        indicatorRightDashColor: widget
                            .tripData.subPointDetails[index].dashColor,
                        indicatorLeftDashColor: leftLineColor(
                            index, widget.tripData.destinationCount),
                        isLeftLineDashed: widget.tripData
                                .subPointDetails[index].isLeftLineDashed ??
                            false,
                        isRightLineDashed: widget.tripData
                                .subPointDetails[index].isRightLineDashed ??
                            false,
                        lineLength: ((textSize?.width) ?? 0) / 2,
                        indicatorDataLeft:
                            widget.tripData.indicatorDataList[index],
                        isIndicatorLeftLineDashed: isLeftLineDashed(
                            index, widget.tripData.destinationCount),
                        isIndicatorRightLineDashed: widget.tripData
                                .subPointDetails[index].isRightLineDashed ??
                            false,
                        showPillData: showPillData(
                            index, widget.tripData.destinationCount),
                        indicatorDataRight: widget.tripData.indicatorDataList[index+1],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  bool showLeftDot(int index, int listCount) {
    return true;
  }

  bool showPillData(int index, int listCount) {
    return index <= listCount;
  }

  bool showRightDot(int index, int listCount) {
    if (index == listCount - 1) {
      return true;
    }
    return false;
  }

  double calculateLeftMargin(Size? textSize) {
    if (textSize != null) {
      return textSize.width > 195 ? textSize.width - 50 : 195;
    }
    return 195;
  }

  double calculateLeftGap(int index, int listCount) {
    if((textSize?.width ?? 0) <= 85){
      return max((subPointSize?.width ?? 0 - (textSize?.width ?? 0)) / 2, 0);
    }
    double value = max((subPointSize?.width ?? 0 - (textSize?.width ?? 0)) / 5, 0);
    return value;
  }

  bool isLeftLineDashed(int index, int listCount) {
    if (index > 0) {
      return widget.tripData.subPointDetails[index - 1].isRightLineDashed ??
          false;
    }
    bool isDashed =
        widget.tripData.subPointDetails[index].isLeftLineDashed ?? false;
    return isDashed;
  }

  Color? leftLineColor(int index, int listCount) {
    if (index > 0) {
      return widget.tripData.subPointDetails[index - 1].dashColor;
    }
    return widget.tripData.subPointDetails[index].dashColor;
  }
}
