import 'package:flutter/material.dart';
import 'package:travel_app/policy_status.dart';

class PolicyWidget extends StatelessWidget {
  const PolicyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xffADD8E6),
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
      child: Column(
        children: [
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text('Cancellation Window'),
                Text('Charges'),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left: 10, top: 10, bottom: 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                PolicyStatus(),
              ],
            ),
          ),
          Row(
            children: const [
              Text('As per local time at the property'),
            ],
          ),
        ],
      ),
    );
  }
}
