import 'dart:core';

import 'package:flutter/material.dart';
import 'package:travel_app/constants/index.dart';
import 'package:travel_app/utils/string_utils.dart';

class JourneyDetails extends StatelessWidget {
  final String? imagePath;
  final Size? imageSize;
  final String? title;
  final String? description;
  final TextStyle? titleTextStyle;
  final TextStyle? descriptionTextStyle;

  const JourneyDetails(
      {super.key,
      this.imagePath,
      this.imageSize,
      this.title,
      this.description,
      this.titleTextStyle,
      this.descriptionTextStyle});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            if (imagePath.isNotNullNorEmpty())
              Image.asset(
                imagePath!,
                //'assets/spice_jet_logo.webp',
                height: imageSize?.height ?? 25,
                width: imageSize?.width ?? 25,
              ),
            if (title.isNotNullNorEmpty())
              const SizedBox(
                width: 5,
              ),
            if (title.isNotNullNorEmpty())
              Text(
                title!,
                style: titleTextStyle ?? TextStyles.journeyDetailTitleStyle,
              ), //'SpiceJet'
          ],
        ),
        if (description.isNotNullNorEmpty())
          const SizedBox(
            height: 2,
          ),
        if (description.isNotNullNorEmpty())
          Text(
            description!,
            style: descriptionTextStyle ?? TextStyles.journeyDetailDescriptionStyle,
          ),
        //'SG-322'
      ],
    );
  }
}
