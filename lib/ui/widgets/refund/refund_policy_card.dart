import 'package:flutter/material.dart';
import 'package:travel_app/constants/index.dart';
import 'package:travel_app/ui/widgets/refund/index.dart';
import 'package:travel_app/utils/index.dart';
import 'package:travel_app/data/refund/index.dart';

class RefundPolicyCard extends StatelessWidget {
  final RefundPolicyDetail refundPolicyDetail;

  const RefundPolicyCard({super.key, required this.refundPolicyDetail});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.all(15),
          child: Text(
            refundPolicyDetail.cardTitle,
            style: refundPolicyDetail.cardTitleTextStyle,
          ),
        ),
        Container(
          color: refundPolicyDetail.cardColor ?? AppColors.lightBlue,
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    refundPolicyDetail.title,
                    style: refundPolicyDetail.titleTextStyle,
                  ),
                  Text(
                    refundPolicyDetail.description,
                    style: refundPolicyDetail.descriptionTextStyle,
                  ),
                ],
              ),
              Container(
                padding: const EdgeInsets.only(top: 10, bottom: 10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RefundPolicyStatus(
                      refundPolicyDetail: refundPolicyDetail,
                    ),
                  ],
                ),
              ),
              if (refundPolicyDetail.bottomText.isNotNullNorEmpty())
                Container(
                  margin: const EdgeInsets.only(top: 5),
                  child: Row(
                    children: [
                      Text(
                        refundPolicyDetail.bottomText!,
                        style: refundPolicyDetail.bottomTextStyle,
                      ),
                    ],
                  ),
                ),
            ],
          ),
        ),
      ],
    );
  }
}
