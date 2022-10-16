// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors_in_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:market/constants.dart';

class TabBarText extends StatelessWidget {
  final String text;

  TabBarText({required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: kPrimaryBlackColor,
      ),
    );
  }
}
