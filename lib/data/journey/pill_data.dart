import 'dart:ui';

class PillData {
  final String text;
  final Color? color;
  final double? borderRadius;
  final double? pillWidth;
  final TextStyle? textStyle;

  PillData(
      {required this.text,
      this.color,
      this.borderRadius,
      this.pillWidth,
      this.textStyle});
}
