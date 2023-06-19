import 'package:flutter/material.dart';
import 'app_colors.dart';

class TextStyles {
  static const String roboto = 'Roboto';

  static const FontWeight light = FontWeight.w300;
  static const FontWeight regular = FontWeight.w400;
  static const FontWeight medium = FontWeight.w500;
  static const FontWeight bold = FontWeight.w700;
  static const FontWeight semiBold = FontWeight.w600;

  ///journey text styles
  static TextStyle get journeyDetailTitleStyle => const TextStyle(
        color: AppColors.black,
        fontWeight: bold,
        fontFamily: roboto,
        fontSize: 16.0,
      );

  static TextStyle get journeyDetailDescriptionStyle => const TextStyle(
        color: AppColors.black,
        fontWeight: bold,
        fontFamily: roboto,
        fontSize: 16.0,
      );

  static TextStyle get journeyDetailRedTitleStyle => const TextStyle(
        color: AppColors.red,
        fontWeight: bold,
        fontFamily: roboto,
        fontSize: 16.0,
      );

  static TextStyle get journeyDetailRedDescriptionStyle => const TextStyle(
        color: AppColors.red,
        fontWeight: bold,
        fontFamily: roboto,
        fontSize: 16.0,
      );

  static TextStyle get pillTextStyle => const TextStyle(
        color: AppColors.black,
        fontWeight: regular,
        fontFamily: roboto,
        fontSize: 18.0,
      );

  static TextStyle get indicatorTimeTextStyle => const TextStyle(
        color: AppColors.black,
        fontWeight: bold,
        fontFamily: roboto,
        fontSize: 25.0,
      );

  static TextStyle get indicatorDateTextStyle => const TextStyle(
        color: AppColors.black,
        fontWeight: regular,
        fontFamily: roboto,
        fontSize: 16.0,
      );

  static TextStyle get indicatorPlaceTextStyle => const TextStyle(
        color: AppColors.black,
        fontWeight: medium,
        fontSize: 20.0,
      );

  static TextStyle get indicatorLocationTextStyle => const TextStyle(
        color: AppColors.black,
        fontWeight: medium,
        fontSize: 20.0,
      );

  //refund text styles
  static TextStyle get refundPolicyCardTitleStyle => const TextStyle(
        color: AppColors.black,
        fontWeight: bold,
        fontFamily: roboto,
        fontSize: 20.0,
      );

  static TextStyle get refundPolicyTitleStyle => const TextStyle(
        color: AppColors.black,
        fontWeight: semiBold,
        fontFamily: roboto,
        fontSize: 16.0,
      );

  static TextStyle get refundPolicyDescriptionStyle => const TextStyle(
        color: AppColors.black,
        fontWeight: semiBold,
        fontFamily: roboto,
        fontSize: 16.0,
      );

  static TextStyle get refundPolicyBottomStyle => const TextStyle(
        color: AppColors.black,
        fontWeight: semiBold,
        fontFamily: roboto,
        fontSize: 16.0,
      );

  static TextStyle get refundPolicyStatusTitleStyle => const TextStyle(
        color: AppColors.black,
        fontWeight: regular,
        fontFamily: roboto,
        fontSize: 15.0,
      );

  static TextStyle get refundPolicyStatusDescriptionStyle => const TextStyle(
        color: AppColors.black,
        fontWeight: regular,
        fontFamily: roboto,
        fontSize: 15.0,
      );
}
