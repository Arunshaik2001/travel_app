import 'dart:ffi';

import 'package:travel_app/constants/index.dart';
import '../../data/journey/index.dart';

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

    PillData pillData0 = PillData(text: Strings.ZERO_ONE_45_M);

    subPointDetails.add(SubPointDetail(
      pillData: pillData0,
      lineLength: 95,
      dashColor: AppColors.lightBlue,
    ));

    PillData pillData1 =
        PillData(text: Strings.ZERO_FOUR_20_M, color: AppColors.lightRed);

    subPointDetails.add(SubPointDetail(
        pillData: pillData1,
        dashColor: AppColors.deepOrange,
        lineLength: 100,
        isLeftLineDashed: true,
        isRightLineDashed: true));

    PillData pillData3 =
        PillData(text: Strings.ZERO_FOUR_20_M, color: AppColors.lightRed);

    subPointDetails.add(SubPointDetail(
        pillData: pillData3,
        dashColor: AppColors.deepOrange,
        lineLength: 100,
        isLeftLineDashed: true,
        isRightLineDashed: true));

    PillData pillData4 =
        PillData(text: Strings.ZERO_FOUR_20_M, color: AppColors.lightRed);

    subPointDetails.add(SubPointDetail(
        pillData: pillData3,
        dashColor: AppColors.deepOrange,
        lineLength: 100,
        isLeftLineDashed: true,
        isRightLineDashed: true));

    PillData pillData5 =
        PillData(text: Strings.ZERO_FOUR_20_M, color: AppColors.lightRed);

    subPointDetails.add(SubPointDetail(
        pillData: pillData3,
        dashColor: AppColors.deepOrange,
        lineLength: 100,
        isLeftLineDashed: true,
        isRightLineDashed: true));

    PillData pillData6 =
        PillData(text: Strings.ZERO_FOUR_20_M, color: AppColors.lightRed);

    subPointDetails.add(SubPointDetail(
        pillData: pillData3,
        dashColor: AppColors.deepOrange,
        lineLength: 100,
        isLeftLineDashed: true,
        isRightLineDashed: true));

    PillData pillData7 =
        PillData(text: Strings.ZERO_FOUR_20_M, color: AppColors.lightRed);

    subPointDetails.add(SubPointDetail(
        pillData: pillData3,
        dashColor: AppColors.deepOrange,
        lineLength: 100,
        isLeftLineDashed: true,
        isRightLineDashed: true));

    PillData pillData2 = PillData(text: Strings.ZERO_ONE_45_M);

    subPointDetails.add(SubPointDetail(
      pillData: pillData2,
      dashColor: AppColors.lightBlue,
      lineLength: 95,
    ));

    // subPointDetails.add(SubPointDetail(
    //   dashColor: AppColors.lightBlue,
    //   lineLength: 95,
    //   pillData: pillData2,
    // ));

    return subPointDetails;
  }

  static List<IndicatorData> _generateIndicatorData() {
    List<IndicatorData> indicatorDataList = [];

    indicatorDataList.add(IndicatorData(
        time: Strings.FIFTEEN_COLON_0,
        date: Strings.THIRTY_JUN_23,
        location: Strings.Pune,
        place: Strings.TERMINAL_1));

    indicatorDataList.add(IndicatorData(
        time: Strings.SEVENTEEN_COLON_35,
        date: Strings.THIRTY_JUN_23,
        location: Strings.Bangalore,
        place: Strings.TERMINAL_1));

    indicatorDataList.add(IndicatorData(
        time: Strings.TWENTY_ONE_COLON_55,
        date: Strings.THIRTY_JUN_23,
        location: Strings.Bangalore,
        place: Strings.TERMINAL_1));

    indicatorDataList.add(IndicatorData(
        time: Strings.TWENTY_ONE_COLON_55,
        date: Strings.THIRTY_JUN_23,
        location: Strings.Bangalore,
        place: Strings.TERMINAL_1));

    indicatorDataList.add(IndicatorData(
        time: Strings.TWENTY_ONE_COLON_55,
        date: Strings.THIRTY_JUN_23,
        location: Strings.Bangalore,
        place: Strings.TERMINAL_1));

    indicatorDataList.add(IndicatorData(
        time: Strings.TWENTY_ONE_COLON_55,
        date: Strings.THIRTY_JUN_23,
        location: Strings.Bangalore,
        place: Strings.TERMINAL_1));

    indicatorDataList.add(IndicatorData(
        time: Strings.TWENTY_ONE_COLON_55,
        date: Strings.THIRTY_JUN_23,
        location: Strings.Bangalore,
        place: Strings.TERMINAL_1));

    indicatorDataList.add(IndicatorData(
        time: Strings.TWENTY_ONE_COLON_55,
        date: Strings.THIRTY_JUN_23,
        location: Strings.Bangalore,
        place: Strings.TERMINAL_1));

    indicatorDataList.add(IndicatorData(
        time: Strings.ZERO_COLON_40,
        date: Strings.FIRST_July_23,
        location: Strings.Delhi,
        place: Strings.TERMINAL_1));

    return indicatorDataList;
  }

  static List<JourneyDetail> _generateJourneyDetails() {
    List<JourneyDetail> journeyDetails = [];

    journeyDetails.add(JourneyDetail(
      imagePath: StaticAssets.spiceJetLogo,
      title: Strings.SpiceJet,
      description: Strings.SG_53,
      titleTextStyle: TextStyles.journeyDetailTitleStyle,
      descriptionTextStyle: TextStyles.journeyDetailDescriptionStyle,
    ));

    journeyDetails.add(JourneyDetail(
      title: Strings.Layover_bangalore,
      description: Strings.BLR,
      titleTextStyle: TextStyles.journeyDetailRedTitleStyle,
      descriptionTextStyle: TextStyles.journeyDetailRedDescriptionStyle,
    ));

    journeyDetails.add(JourneyDetail(
      title: Strings.Layover_bangalore,
      description: Strings.BLR,
      titleTextStyle: TextStyles.journeyDetailRedTitleStyle,
      descriptionTextStyle: TextStyles.journeyDetailRedDescriptionStyle,
    ));

    journeyDetails.add(JourneyDetail(
      title: Strings.Layover_bangalore,
      description: Strings.BLR,
      titleTextStyle: TextStyles.journeyDetailRedTitleStyle,
      descriptionTextStyle: TextStyles.journeyDetailRedDescriptionStyle,
    ));

    journeyDetails.add(JourneyDetail(
      title: Strings.Layover_bangalore,
      description: Strings.BLR,
      titleTextStyle: TextStyles.journeyDetailRedTitleStyle,
      descriptionTextStyle: TextStyles.journeyDetailRedDescriptionStyle,
    ));

    journeyDetails.add(JourneyDetail(
      title: Strings.Layover_bangalore,
      description: Strings.BLR,
      titleTextStyle: TextStyles.journeyDetailRedTitleStyle,
      descriptionTextStyle: TextStyles.journeyDetailRedDescriptionStyle,
    ));

    journeyDetails.add(JourneyDetail(
      title: Strings.Layover_bangalore,
      description: Strings.BLR,
      titleTextStyle: TextStyles.journeyDetailRedTitleStyle,
      descriptionTextStyle: TextStyles.journeyDetailRedDescriptionStyle,
    ));

    journeyDetails.add(JourneyDetail(
      imagePath: StaticAssets.spiceJetLogo,
      title: Strings.SpiceJet,
      description: Strings.SG_198,
      titleTextStyle: TextStyles.journeyDetailTitleStyle,
      descriptionTextStyle: TextStyles.journeyDetailDescriptionStyle,
    ));

    // journeyDetails.add(JourneyDetail(
    //   imagePath: null,
    //   title: '',
    //   description: '',
    // ));

    return journeyDetails;
  }
}
