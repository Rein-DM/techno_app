import 'package:flutter/material.dart';
import 'package:techno_app/features/dashboard/home/home_main.dart';
import 'package:techno_app/features/dashboard/menu/menu_screen.dart';

import 'botnav/bottom_nav._main.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key, required String title});

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;
  PageController _pageController = PageController();

  void _onPageChanged(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  void _onTabTapped(int index) {
    _pageController.jumpToPage(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        onPageChanged: _onPageChanged,
        children: const [
          HomeMain(
            title: '',
          ),
          MenuScreen(),
        ],
      ),
      bottomNavigationBar: BottomNavigation(
        currentIndex: _currentIndex,
        onTap: _onTabTapped,
      ),
    );
  }
}
