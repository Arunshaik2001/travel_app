import 'package:flutter/material.dart';

class IndicatorData {
  final String? time;
  final String? date;
  final String? location;
  final String? place;
  final TextStyle? timeTextStyle;
  final TextStyle? dateTextStyle;

  IndicatorData(
      {this.time,
      this.date,
      this.location,
      this.place,
      this.timeTextStyle,
      this.dateTextStyle,
      this.locationTextStyle,
      this.placeTextStyle});

  final TextStyle? locationTextStyle;
  final TextStyle? placeTextStyle;
}
