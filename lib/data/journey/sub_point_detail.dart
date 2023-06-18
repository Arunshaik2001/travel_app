import 'package:flutter/material.dart';
import 'package:travel_app/data/journey/pill_data.dart';

import 'indicator_data.dart';
import 'journey_detail.dart';

class SubPointDetail {
  Color? leftPointInnerColor, rightPointInnerColor;
  Color? leftPointOuterColor, rightPointOuterColor;
  double? lineLength;
  bool? isLeftLineDashed, isRightLineDashed;
  PillData? pillData;
  double? leftPointOuterRadius, leftPointInnerRadius;
  double? rightPointOuterRadius, rightPointInnerRadius;
  double? dashLength;
  Color? dashColor;


  SubPointDetail(
      {this.leftPointInnerColor,
      this.rightPointInnerColor,
      this.leftPointOuterColor,
      this.rightPointOuterColor,
      this.lineLength,
      this.isLeftLineDashed,
      this.isRightLineDashed,
      this.pillData,
      this.leftPointOuterRadius,
      this.leftPointInnerRadius,
      this.rightPointOuterRadius,
      this.rightPointInnerRadius,
      this.dashLength,
      this.dashColor,});
}
