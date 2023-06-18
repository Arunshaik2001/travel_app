import 'package:flutter/material.dart';
import 'package:travel_app/constants/app_colors.dart';
import 'package:travel_app/constants/static_assets.dart';
import 'package:travel_app/ui/widgets/journey/sub_point_details.dart';

import 'indicator_details.dart';
import 'journey-details.dart';

class TripCard extends StatelessWidget {
  double cardElevation;
  Color cardColor;
  Color cardBorderColor;
  double cardBorderRadius;
  double cardBorderWidth;
  int destinationCount;

  TripCard(
      {super.key,
      this.cardElevation = 2.0,
      this.cardColor = AppColors.tripCardBg,
      this.cardBorderRadius = 25.0,
      this.cardBorderColor = AppColors.tripCardBorder,
      this.cardBorderWidth = 1.0,
      required this.destinationCount});

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Card(
          elevation: cardElevation,
          color: cardColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(cardBorderRadius),
            side: BorderSide(
              color: cardBorderColor,
              width: cardBorderWidth,
            ),
          ),
          child: Container(
            padding: const EdgeInsets.all(50),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(left: 40),
                  child: Row(
                    children: List.generate(
                      destinationCount,
                      (index) => Column(
                        children: [
                          const JourneyDetails(
                            imagePath: StaticAssets.spiceJetLogo,
                            title: 'SpiceJet',
                            description: 'SG-532',
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          SubPointDetails(
                            pillText: '01h 45m',
                            showRightDot: showRightDot(index, destinationCount),
                            showLeftDot: showLeftDot(index, destinationCount),
                            dashColor: AppColors.deepOrange,
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
                    destinationCount + 1,
                    (index) => Container(
                      margin: EdgeInsets.only(
                          right: (index == destinationCount) ? 0 : 195),
                      child: const IndicatorDetails(
                        time: '15:00',
                        date: '23rd Jun 2023',
                        location: 'Pune(PNQ)',
                        place: 'Terminal 1',
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
