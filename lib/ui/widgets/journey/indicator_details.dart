import 'package:flutter/material.dart';
import 'package:travel_app/constants/index.dart';
import 'package:travel_app/utils/index.dart';

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
        //'15:50'
        if (date.isNotNullNorEmpty())
          const SizedBox(
            height: 5,
          ),
        if (date.isNotNullNorEmpty())
          Text(
            date!,
            style: dateTextStyle ?? TextStyles.indicatorDateTextStyle,
          ),
        //'30th Jun 2023'
        if (location.isNotNullNorEmpty())
          const SizedBox(
            height: 5,
          ),
        if (location.isNotNullNorEmpty())
          Text(
            location!,
            style: locationTextStyle ?? TextStyles.indicatorLocationTextStyle,
          ),
        //'PUNE(PNQ)'
        if (place.isNotNullNorEmpty())
          const SizedBox(
            height: 2,
          ),
        if (place.isNotNullNorEmpty())
          Text(
            place!,
            style: placeTextStyle ?? TextStyles.indicatorPlaceTextStyle,
          ),
        // 'Terminal 1'
      ],
    );
  }
}
