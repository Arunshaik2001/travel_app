import 'package:flutter/material.dart';
import 'package:travel_app/data/refund/index.dart';

class RefundPolicyDetail {
  String cardTitle;
  String title;
  String description;
  TextStyle? titleTextStyle;
  TextStyle? descriptionTextStyle;
  String? bottomText;
  TextStyle? bottomTextStyle;
  List<RefundDateStatusDetail> refundDateList;
  int policyDatesCount;
  Color? cardColor;
  TextStyle? cardTitleTextStyle;

  RefundPolicyDetail(
      {required this.title,
      required this.description,
      required this.policyDatesCount,
      required this.refundDateList,
      required this.cardTitle,
      this.titleTextStyle,
      this.descriptionTextStyle,
      this.bottomText,
      this.bottomTextStyle,
      this.cardColor,
      this.cardTitleTextStyle});
}
