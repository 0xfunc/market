// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:market/constants.dart';
import 'package:market/shared/custom_text_button.dart';
import 'package:market/shared/default_button.dart';
import 'package:market/size_config.dart';

class LoginScreen extends StatelessWidget {
  static const String routeName = 'login_screen';

  @override
  Widget build(BuildContext context) {
    // Query screen dimension of device on starting screen
    SizeConfig().init(context);

    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(20.0),
          vertical: getProportionateScreenHeight(40.0),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Welcome to Parousol',
              style: TextStyle(
                fontSize: getProportionateScreenHeight(24.0),
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              "Nahh, we won't judge! Feel free to buy and sell whatever you like.",
              style: TextStyle(
                  color: kDarkGrayColor,
                  fontSize: getProportionateScreenHeight(14.0),
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: getProportionateScreenHeight(100.0),
            ),
            DefaultIconButton(
              text: 'Continue with Google',
              onPressed: () {},
            ),
            SizedBox(
              height: getProportionateScreenHeight(10.0),
            ),
            Spacer(),
            Text(
              "By clicking 'Continue with Google' above, you acknowledge that you have read and understood, and agree to Parousol's Terms & Conditions and Privacy Policy.",
              style: TextStyle(
                  color: kDarkGrayColor,
                  fontSize: getProportionateScreenHeight(14.0),
                  fontWeight: FontWeight.w500),
            )
          ],
        ),
      ),
    );
  }
}
