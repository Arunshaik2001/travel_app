import 'package:flutter/material.dart';
import 'package:travel_app/combined_widget.dart';

import 'flight_details.dart';
import 'image_with_text.dart';

class CombinedListWidget extends StatelessWidget {
  const CombinedListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Card(
        elevation: 2.0,
        color: const Color(0xfffffaf4),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25.0),
          side: const BorderSide(
            color: Color(0xffffb266),
            width: 1.0,
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
                    3,
                    (index) => Column(
                      children: [
                        const ImageAndText(),
                        const SizedBox(
                          height: 20,
                        ),
                        CombinedWidget(showRightDot: (index == 1)? false: true,showLeftDot: (index == 1)? false: true,),
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
                  4,
                  (index) => Container(
                    margin: EdgeInsets.only(right: (index == 3) ? 0 : 185),
                    child: const FlightDetails(),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
