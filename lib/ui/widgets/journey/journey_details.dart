import 'dart:core';
import 'package:flutter/material.dart';
import 'package:travel_app/constants/index.dart';
import 'package:travel_app/utils/index.dart';

///render journey widget between two indicators.
///
/// parameters:
/// **imagePath**            - is the image path to show.
/// **imageSize**            - is the image size.
/// **title**                - is the title of the journey.
/// **description**          - is the description of the journey.
/// **titleTextStyle**       - is the place time.
/// **descriptionTextStyle** - is the time text style used.
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
    return SizedBox(
      height: 80,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (imagePath.isNotNullNorEmpty())
                Image.asset(
                  imagePath!,
                  height: imageSize?.height ?? 25,
                  width: imageSize?.width ?? 25,
                ),
              if (title.isNotNullNorEmpty())
                const SizedBox(
                  width: 5,
                ),
              if (title.isNotNullNorEmpty())
                Text(
                  title!.replaceAll("\n", ""),
                  style: titleTextStyle ?? TextStyles.journeyDetailTitleStyle,
                  textAlign: TextAlign.center,
                ), //'SpiceJet'
            ],
          ),
          if (description.isNotNullNorEmpty())
            const SizedBox(
              height: 2,
            ),
          if (description.isNotNullNorEmpty())
            Row(
              children: [
                Text(
                  description!.replaceAll("\n", ""),
                  textAlign: TextAlign.center,
                  style: descriptionTextStyle ?? TextStyles.journeyDetailDescriptionStyle,
                ),
              ],
            ),
          //'SG-322'
        ],
      ),
    );
  }
}
