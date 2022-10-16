import 'package:market/screens/home/discover_screen.dart';
import 'package:market/screens/home/home_screen.dart';
import 'package:market/screens/login_screen.dart';
import 'package:market/screens/wrapper.dart';

final routes = {
  Wrapper.routeName: (context) => Wrapper(),
  LoginScreen.routeName: (context) => LoginScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
  DiscoverScreen.routeName: (context) => DiscoverScreen(),
};
