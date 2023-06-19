import 'dart:math';

import 'package:travel_app/constants/index.dart';
import 'package:travel_app/constants/static_assets.dart';
import 'package:travel_app/data/journey/pill_data.dart';

import '../../constants/app_colors.dart';
import '../../data/journey/indicator_data.dart';
import '../../data/journey/journey_detail.dart';
import '../../data/journey/sub_point_detail.dart';
import '../../data/journey/trip_data.dart';

class JourneyRepo {
  static TripData generateTripData() {
    List<SubPointDetail> subPointDetails = _generateSubPointData();
    List<IndicatorData> indicatorDataList = _generateIndicatorData();
    List<JourneyDetail> journeyDetails = _generateJourneyDetails();

    TripData tripData = TripData(
        cardElevation: 2,
        cardBorderColor: AppColors.tripCardBorder,
        cardColor: AppColors.tripCardBg,
        journeyDetails: journeyDetails,
        indicatorDataList: indicatorDataList,
        subPointDetails: subPointDetails,
        destinationCount: subPointDetails.length);

    return tripData;
  }

  static List<SubPointDetail> _generateSubPointData() {
    List<SubPointDetail> subPointDetails = [];

    PillData pillData0 = PillData(text: '01 45m');

    subPointDetails.add(SubPointDetail(
      pillData: pillData0,
      lineLength: 95,
      dashColor: AppColors.lightBlue,
    ));

    PillData pillData1 = PillData(text: '04 20m', color: AppColors.lightRed);

    subPointDetails.add(SubPointDetail(
        pillData: pillData1,
        dashColor: AppColors.deepOrange,
        lineLength: 100,
        isLeftLineDashed: true,
        isRightLineDashed: true));

    PillData pillData2 = PillData(text: '01 45m');

    subPointDetails.add(SubPointDetail(
      pillData: pillData2,
      dashColor: AppColors.lightBlue,
      lineLength: 95,
    ));

    return subPointDetails;
  }

  static List<IndicatorData> _generateIndicatorData() {
    List<IndicatorData> indicatorDataList = [];

    indicatorDataList.add(IndicatorData(
        time: '15:00',
        date: '30th Jun 2023',
        location: 'Pune(PNQ)',
        place: 'Terminal 1'));

    indicatorDataList.add(IndicatorData(
        time: '17:35',
        date: '30th Jun 2023',
        location: 'Bangalore(BLR)',
        place: 'Terminal 1'));

    indicatorDataList.add(IndicatorData(
        time: '21:55',
        date: '30th Jun 2023',
        location: 'Bangalore(BLR)',
        place: 'Terminal 1'));

    indicatorDataList.add(IndicatorData(
        time: '00:40',
        date: '1st July 2023',
        location: 'Delhi(DEL)',
        place: 'Terminal 1'));

    return indicatorDataList;
  }

  static List<JourneyDetail> _generateJourneyDetails() {
    List<JourneyDetail> journeyDetails = [];

    journeyDetails.add(JourneyDetail(
      imagePath: StaticAssets.spiceJetLogo,
      title: 'SpiceJet',
      description: 'SG-53',
      titleTextStyle: TextStyles.journeyDetailTitleStyle,
      descriptionTextStyle: TextStyles.journeyDetailDescriptionStyle,
    ));

    journeyDetails.add(JourneyDetail(
      title: 'Layover in\nbangalore',
      description: '(BLR)',
      titleTextStyle: TextStyles.journeyDetailRedTitleStyle,
      descriptionTextStyle: TextStyles.journeyDetailRedDescriptionStyle,
    ));

    journeyDetails.add(JourneyDetail(
      imagePath: StaticAssets.spiceJetLogo,
      title: 'SpiceJet',
      description: 'SG-198',
      titleTextStyle: TextStyles.journeyDetailTitleStyle,
      descriptionTextStyle: TextStyles.journeyDetailDescriptionStyle,
    ));

    return journeyDetails;
  }
}
