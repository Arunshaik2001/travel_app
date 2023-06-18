import 'package:flutter/material.dart';

class ImageAndText extends StatelessWidget {
  const ImageAndText({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Image.asset(
              'assets/spice_jet_logo.webp',
              height: 25,
              width: 25,
            ),
            const SizedBox(width: 5,),
            const Text('SpiceJet'),
          ],
        ),
        const SizedBox(
          height: 2,
        ),
        const Text('SG-322'),
      ],
    );
  }
}
