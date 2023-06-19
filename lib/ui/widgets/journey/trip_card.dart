import 'package:flutter/material.dart';
import 'package:travel_app/constants/app_colors.dart';
import 'package:travel_app/constants/static_assets.dart';
import 'package:travel_app/ui/widgets/journey/sub_point_details.dart';
import 'package:travel_app/utils/list_utils.dart';

import '../../../data/journey/trip_data.dart';
import 'indicator_details.dart';
import 'journey-details.dart';

class TripCard extends StatelessWidget {
  TripData tripData;

  TripCard({super.key, required this.tripData});

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Card(
          elevation: tripData.cardElevation ?? 2.0,
          color: tripData.cardColor ?? AppColors.tripCardBg,
          shape: RoundedRectangleBorder(
            borderRadius:
                BorderRadius.circular(tripData.cardBorderRadius ?? 25.0),
            side: BorderSide(
              color: tripData.cardBorderColor ?? AppColors.tripCardBorder,
              width: tripData.cardBorderWidth ?? 1.0,
            ),
          ),
          child: Container(
            padding: const EdgeInsets.all(50),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(left: 35),
                  child: Row(
                    children: List.generate(
                      tripData.destinationCount,
                      (index) => Column(
                        children: [
                          if (tripData.journeyDetails.isNotNullNorEmpty() &&
                              tripData.journeyDetails[index] != null)
                            JourneyDetails(
                              imagePath:
                                  tripData.journeyDetails[index].imagePath,
                              title: tripData.journeyDetails[index].title,
                              description:
                                  tripData.journeyDetails[index].description,
                              titleTextStyle:
                                  tripData.journeyDetails[index].titleTextStyle,
                              descriptionTextStyle: tripData
                                  .journeyDetails[index].descriptionTextStyle,
                            ),
                          const SizedBox(
                            height: 10,
                          ),
                          SubPointDetails(
                            pillText:
                                tripData.subPointDetails[index].pillData?.text,
                            pillColor:
                                tripData.subPointDetails[index].pillData?.color,
                            showRightDot:
                                showRightDot(index, tripData.destinationCount),
                            showLeftDot:
                                showLeftDot(index, tripData.destinationCount),
                            dashColor:
                                tripData.subPointDetails[index].dashColor,
                            isLeftLineDashed: tripData
                                    .subPointDetails[index].isLeftLineDashed ??
                                false,
                            isRightLineDashed: tripData
                                    .subPointDetails[index].isRightLineDashed ??
                                false,
                            lineLength:
                                tripData.subPointDetails[index].lineLength,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: List.generate(
                    tripData.destinationCount + 1,
                    (index) => Container(
                      margin: EdgeInsets.only(
                          right:
                              (index == tripData.destinationCount) ? 0 : 195),
                      child: IndicatorDetails(
                        time:
                            tripData.indicatorDataList[index]?.time ?? '15:00',
                        date: tripData.indicatorDataList[index]?.date ??
                            '23rd Jun 2023',
                        location: tripData.indicatorDataList[index]?.location ??
                            'Pune(PNQ)',
                        place: tripData.indicatorDataList[index]?.place ??
                            'Terminal 1',
                        timeTextStyle:
                            tripData.indicatorDataList[index]?.timeTextStyle,
                        dateTextStyle:
                            tripData.indicatorDataList[index]?.dateTextStyle,
                        locationTextStyle: tripData
                            .indicatorDataList[index]?.locationTextStyle,
                        placeTextStyle:
                            tripData.indicatorDataList[index]?.placeTextStyle,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  bool showLeftDot(int index, int listCount) {
    return true;
  }

  bool showRightDot(int index, int listCount) {
    if (index == listCount - 1) {
      return true;
    }
    return false;
  }
}
