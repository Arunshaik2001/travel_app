import 'package:flutter/material.dart';
import 'package:travel_app/repository/journey/index.dart';
import 'package:travel_app/repository/refund/index.dart';
import 'package:travel_app/ui/widgets/journey/index.dart';
import 'package:travel_app/ui/widgets/refund/index.dart';

class TravelScreen extends StatelessWidget {
  const TravelScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Container(
          margin: const EdgeInsets.symmetric(vertical: 20),
          child: Column(
            children: [
              TripCard(
                tripData: JourneyRepo.generateTripData(),
              ),
              const SizedBox(
                height: 20,
              ),
              RefundPolicyCard(
                refundPolicyDetail: RefundRepo.generateRefundPolicyDetail(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
