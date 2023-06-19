import 'package:flutter/material.dart';
import 'package:travel_app/data/refund/index.dart';
import 'package:travel_app/ui/widgets/refund/index.dart';

class RefundPolicyStatus extends StatelessWidget {
  final RefundPolicyDetail refundPolicyDetail;

  RefundPolicyStatus({super.key, required this.refundPolicyDetail});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: List.generate(
            refundPolicyDetail.policyDatesCount,
            (index) => RefundDateStatus(
                  showMainTopLine: showTopMainLine(index),
                  showIndicatorTopLine: showTopAndBottomLine(
                      index, refundPolicyDetail.policyDatesCount),
                  showIndicatorBottomLine: showTopAndBottomLine(
                      index, refundPolicyDetail.policyDatesCount),
                  crossAxisAlignment: setIndicatorCrossAxis(
                      index, refundPolicyDetail.policyDatesCount),
                  title: refundPolicyDetail.refundDateList[index].title,
                  description:
                      refundPolicyDetail.refundDateList[index].description,
                  indicatorInnerColor: refundPolicyDetail
                      .refundDateList[index].indicatorInnerColor,
                  indicatorOuterColor: refundPolicyDetail
                      .refundDateList[index].indicatorOuterColor,
                  titleTextStyle: refundPolicyDetail
                      .refundDateList[index].titleTextStyle,
                  descriptionTextStyle: refundPolicyDetail
                      .refundDateList[index].descriptionTextStyle,
                )),
      ),
    );
  }

  CrossAxisAlignment setIndicatorCrossAxis(index, listCount) {
    if (index == 0) {
      return CrossAxisAlignment.end;
    } else if (index == listCount - 1) {
      return CrossAxisAlignment.start;
    }
    return CrossAxisAlignment.center;
  }

  bool showTopMainLine(index) {
    return index != 0;
  }

  bool showTopAndBottomLine(index, listCount) {
    if (index > 0 && index < listCount - 1) {
      return true;
    }
    return false;
  }
}
