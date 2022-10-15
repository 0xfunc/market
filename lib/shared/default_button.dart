// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:market/constants.dart';
import 'package:market/size_config.dart';

class DefaultIconButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;

  DefaultIconButton({
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getProportionateScreenHeight(50.0),
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: kPrimaryBlackColor,
          elevation: 0.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(100.0),
          ),
        ),
        child: Text(
          text,
          style: TextStyle(
            color: kPrimaryWhiteColor,
            fontSize: getProportionateScreenHeight(16.0),
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
