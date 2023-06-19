import 'dart:ui';

import 'package:travel_app/data/journey/index.dart';

class TripData {
  List<JourneyDetail> journeyDetails;
  List<IndicatorData> indicatorDataList;
  List<SubPointDetail> subPointDetails;
  double? cardElevation;
  Color? cardColor;
  Color? cardBorderColor;
  double? cardBorderRadius;
  double? cardBorderWidth;
  int destinationCount;

  TripData({
    required this.journeyDetails,
    required this.indicatorDataList,
    required this.subPointDetails,
    required this.destinationCount,
    this.cardElevation,
    this.cardColor,
    this.cardBorderColor,
    this.cardBorderRadius,
    this.cardBorderWidth,
  });
}
