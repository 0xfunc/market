import 'package:flutter/material.dart';
import 'package:market/routes.dart';
import 'package:market/theme.dart';
import 'screens/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Parousol',
      theme: theme(),
      initialRoute: LoginScreen.routeName,
      routes: routes,
      debugShowCheckedModeBanner: false,
    );
  }
}
