import 'dart:ui';

import 'package:travel_app/data/journey/sub_point_detail.dart';

import 'indicator_data.dart';
import 'journey_detail.dart';

class TripData {
  List<JourneyDetail?> journeyDetail;
  List<IndicatorData?> indicatorData;
  List<SubPointDetail?> subPointDetails;
  double? cardElevation;
  Color? cardColor;
  Color? cardBorderColor;
  double? cardBorderRadius;
  double? cardBorderWidth;
  int destinationCount;

  TripData({
    required this.journeyDetail,
    required this.indicatorData,
    required this.subPointDetails,
    required this.destinationCount,
    this.cardElevation,
    this.cardColor,
    this.cardBorderColor,
    this.cardBorderRadius,
    this.cardBorderWidth,
  });
}
