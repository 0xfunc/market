// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:market/constants.dart';

ThemeData theme() {
  return ThemeData(
    scaffoldBackgroundColor: kPrimaryWhiteColor,
    fontFamily: "Quicksand",
    appBarTheme: appBarTheme(),
    primaryColor: kPrimaryBlackColor,
    highlightColor: Colors.transparent,
    splashColor: Colors.transparent,
  );
}

AppBarTheme appBarTheme() {
  return AppBarTheme(
    color: kPrimaryWhiteColor,
    elevation: 0.0,
    titleTextStyle: TextStyle(
      color: kPrimaryBlackColor,
      fontWeight: FontWeight.w500,
      fontSize: 24.0,
    ),
  );
}
