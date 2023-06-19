import 'package:flutter/material.dart';
import 'package:travel_app/constants/index.dart';
import 'package:travel_app/utils/index.dart';

///description about an indicator.
///
/// parameters:
/// **time**              - is the text time.
/// **date**              - is the date time.
/// **location**          - is the location time.
/// **place**             - is the place time.
/// **timeTextStyle**     - is the time text style used.
/// **dateTextStyle**     - is the date text style used.
/// **locationTextStyle** - is the location text style used.
/// **placeTextStyle**    - is the place text style used.
class IndicatorDetails extends StatelessWidget {
  final String? time;
  final String? date;
  final String? location;
  final String? place;
  final TextStyle? timeTextStyle;
  final TextStyle? dateTextStyle;
  final TextStyle? locationTextStyle;
  final TextStyle? placeTextStyle;

  const IndicatorDetails(
      {super.key,
      this.time,
      this.date,
      this.location,
      this.place,
      this.dateTextStyle,
      this.timeTextStyle,
      this.locationTextStyle,
      this.placeTextStyle});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (time.isNotNullNorEmpty())
          Text(
            time!,
            style: timeTextStyle ?? TextStyles.indicatorTimeTextStyle,
          ),
        if (date.isNotNullNorEmpty())
          const SizedBox(
            height: 5,
          ),
        if (date.isNotNullNorEmpty())
          Text(
            date!,
            style: dateTextStyle ?? TextStyles.indicatorDateTextStyle,
          ),
        if (location.isNotNullNorEmpty())
          const SizedBox(
            height: 5,
          ),
        if (location.isNotNullNorEmpty())
          Text(
            location!,
            style: locationTextStyle ?? TextStyles.indicatorLocationTextStyle,
          ),
        if (place.isNotNullNorEmpty())
          const SizedBox(
            height: 2,
          ),
        if (place.isNotNullNorEmpty())
          Text(
            place!,
            style: placeTextStyle ?? TextStyles.indicatorPlaceTextStyle,
          ),
      ],
    );
  }
}
