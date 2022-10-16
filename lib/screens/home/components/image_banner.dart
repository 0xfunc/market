// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:market/constants.dart';
import 'package:market/size_config.dart';

class ImageBanner extends StatelessWidget {
  final String image;

  ImageBanner({required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        right: getProportionateScreenWidth(5.0),
        left: getProportionateScreenWidth(5.0),
      ),
      height: getProportionateScreenHeight(10.0),
      width: double.infinity,
      child: ClipRRect(
        borderRadius: BorderRadius.all(
          Radius.circular(15.0),
        ),
        child: Image.network(
          image,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
