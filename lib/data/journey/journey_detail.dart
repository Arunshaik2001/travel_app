import 'package:flutter/material.dart';

class JourneyDetail {
  final String? imagePath;
  final String? title;
  final String? description;
  final TextStyle? titleTextStyle;
  final TextStyle? descriptionTextStyle;

  JourneyDetail(
      {this.imagePath,
      this.title,
      this.description,
      this.titleTextStyle,
      this.descriptionTextStyle});
}
