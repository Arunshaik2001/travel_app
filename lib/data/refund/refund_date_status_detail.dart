import 'package:flutter/material.dart';

class RefundDateStatusDetail {
  Color? lineColor;
  double? lineHeight;
  double? lineWidth;
  Color? indicatorInnerColor;
  Color? indicatorOuterColor;
  String title;
  String description;
  TextStyle? titleTextStyle;
  TextStyle? descriptionTextStyle;
  double? innerTopLineHeight;
  double? innerBottomLineHeight;

  RefundDateStatusDetail({
    required this.title,
    required this.description,
    this.lineColor,
    this.lineHeight,
    this.lineWidth,
    this.indicatorInnerColor,
    this.indicatorOuterColor,
    this.titleTextStyle,
    this.descriptionTextStyle,
    this.innerBottomLineHeight,
    this.innerTopLineHeight,
  });
}
