
import 'package:flutter/material.dart';

class PillWidget extends StatelessWidget {
  final String text;
  final Color color;
  final double borderRadius;
  final EdgeInsets padding;

  PillWidget({super.key,
    required this.text,
    required this.color,
    this.borderRadius = 20.0,
    this.padding = const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      child: Padding(
        padding: padding,
        child: Center(
          child: Text(
            text,
            style: const TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w500,
              fontSize: 16.0,
            ),
          ),
        ),
      ),
    );
  }
}