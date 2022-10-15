// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  final String text;
  final Color color;
  final double fontSize;
  final FontWeight? fontWeight;
  final VoidCallback? onPressed;

  get kPrimaryColor => null;

  CustomTextButton({
    required this.text,
    required this.fontSize,
    this.fontWeight,
    required this.color,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          padding: EdgeInsets.zero,
          splashFactory: NoSplash.splashFactory),
      child: Text(
        text,
        style: TextStyle(
          color: color,
          fontSize: fontSize,
          fontWeight: fontWeight,
        ),
      ),
    );
  }
}
