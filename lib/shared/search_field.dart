// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:market/constants.dart';
import 'package:market/size_config.dart';

class SearchField extends StatefulWidget {
  @override
  State<SearchField> createState() => _SearchFieldState();
}

class _SearchFieldState extends State<SearchField> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(
          vertical: getProportionateScreenHeight(10.0),
          horizontal: getProportionateScreenWidth(20.0),
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.all(
            Radius.circular(
              30.0,
            ),
          ),
        ),
        filled: true,
        fillColor: kLightGrayColor,
        hintText: 'Search Parousol',
        hintStyle: TextStyle(
          color: kDarkGrayColor,
        ),
        suffixIcon: Icon(
          Icons.search,
          color: kDarkGrayColor,
        ),
      ),
    );
  }
}
