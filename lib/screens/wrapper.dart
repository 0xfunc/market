// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:market/screens/login_screen.dart';
import 'package:market/size_config.dart';

class Wrapper extends StatefulWidget {
  static const String routeName = 'wrapper';

  @override
  State<Wrapper> createState() => _WrapperState();
}

class _WrapperState extends State<Wrapper> {
  @override
  Widget build(BuildContext context) {
    // Query screen dimension of device on starting screen
    SizeConfig().init(context);
    return LoginScreen();
  }
}
