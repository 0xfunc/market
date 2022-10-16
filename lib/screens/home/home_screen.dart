// ignore_for_file: prefer_const_constructors, prefer_final_fields, duplicate_ignore, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:market/constants.dart';
import 'package:market/screens/home/chat_screen.dart';
import 'package:market/screens/home/discover_screen.dart';
import 'package:market/screens/home/for_you_screen.dart';
import 'package:market/screens/home/profile_screen.dart';
import '../../size_config.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'home_screen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // Navigation bar selection
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    if (index != 1) {
      setState(() {
        _selectedIndex = index;
      });
    }
  }

  // Navigation bar pages
  static List<Widget> _pages = <Widget>[
    DiscoverScreen(),
    ForYouScreen(),
    ChatScreen(),
    ChatScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: _pages.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: Theme(
        data: ThemeData(
          splashColor: Colors.transparent,
        ),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: kPrimaryWhiteColor,
          selectedItemColor: kPrimaryBlackColor,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          elevation: 10.0,
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(
                Icons.search_rounded,
              ),
              label: 'Discover',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.interests_outlined,
              ),
              label: 'For you',
            ),
            BottomNavigationBarItem(
              icon: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: kPrimaryBlackColor,
                  shadowColor: Colors.black12,
                  elevation: 4.0,
                  padding: EdgeInsets.zero,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                ),
                child: Icon(
                  Icons.add_outlined,
                ),
              ),
              label: 'Start Live',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.forum_outlined,
              ),
              label: 'Chat',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person_outline,
              ),
              label: 'Profile',
            ),
          ],
        ),
      ),
    );
  }
}
