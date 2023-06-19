import 'package:travel_app/constants/index.dart';
import '../../data/refund/index.dart';

class RefundRepo {
  static RefundPolicyDetail generateRefundPolicyDetail() {
    List<RefundDateStatusDetail> refundDateList = [];

    refundDateList.add(RefundDateStatusDetail(
        title: Strings.Till_05th_Jun_23_2_00,
        description: Strings.zero_dollar,
        indicatorInnerColor: AppColors.limeGreen,
        indicatorOuterColor: AppColors.green,
        titleTextStyle: TextStyles.refundPolicyStatusTitleStyle,
        descriptionTextStyle: TextStyles.refundPolicyStatusDescriptionStyle));

    refundDateList.add(RefundDateStatusDetail(
        title: Strings.From_05th_Jun_23_2_00,
        description:
            Strings.hundered_percent_of_the_booking_mount_will_be_charged,
        indicatorInnerColor: AppColors.lightRed,
        indicatorOuterColor: AppColors.red,
        titleTextStyle: TextStyles.refundPolicyStatusTitleStyle,
        descriptionTextStyle: TextStyles.refundPolicyStatusDescriptionStyle));

    RefundPolicyDetail refundPolicyDetail = RefundPolicyDetail(
        title: Strings.Cancellation_Window,
        description: Strings.Charges,
        policyDatesCount: refundDateList.length,
        refundDateList: refundDateList,
        bottomText: Strings.As_per_local_time_at_the_property,
        titleTextStyle: TextStyles.refundPolicyTitleStyle,
        descriptionTextStyle: TextStyles.refundPolicyDescriptionStyle,
        bottomTextStyle: TextStyles.refundPolicyBottomStyle,
        cardTitle: Strings.Refund_Policy,
        cardTitleTextStyle: TextStyles.refundPolicyCardTitleStyle);

    return refundPolicyDetail;
  }
}
