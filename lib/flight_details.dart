

import 'package:flutter/material.dart';

class FlightDetails extends StatelessWidget {
  const FlightDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Text('15:50'),
        SizedBox(height: 5,),
        Text('30th Jun 2023'),
        SizedBox(height: 5,),
        Text('PUNE(PNQ)'),
        SizedBox(height: 2,),
        Text('Terminal 1'),
      ],
    );
  }
}
