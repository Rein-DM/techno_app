// bottom_navigation.dart
import 'package:flutter/material.dart';
import '../../../constants/assets.dart';

class BottomNavigation extends StatefulWidget {
  final int currentIndex;
  final Function(int) onTap;

  const BottomNavigation({
    Key? key,
    required this.currentIndex,
    required this.onTap,
  }) : super(key: key);

  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 30.0, left: 30, bottom: 8),
      child: ClipRRect(
        borderRadius: const BorderRadius.all(Radius.circular(40)),
        child: BottomNavigationBar(
          currentIndex: widget.currentIndex,
          backgroundColor: Colors.transparent,
          type: BottomNavigationBarType.shifting,
          items: const [
            BottomNavigationBarItem(
              icon: SizedBox(
                width: 24,
                height: 24,
                child: ImageIcon(AssetImage(Assets.home)),
              ),
              backgroundColor: Color(0xff212121),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: SizedBox(
                width: 24,
                height: 24,
                child: ImageIcon(AssetImage(Assets.menu)),
              ),
              backgroundColor: Color(0xff212121),
              label: 'Menu',
            ),
            BottomNavigationBarItem(
              icon: SizedBox(
                width: 24,
                height: 24,
                child: ImageIcon(AssetImage(Assets.saved)),
              ),
              backgroundColor: Color(0xff212121),
              label: 'Saved',
            ),
            BottomNavigationBarItem(
              icon: SizedBox(
                width: 24,
                height: 24,
                child: ImageIcon(AssetImage(Assets.user)),
              ),
              backgroundColor: Color(0xff212121),
              label: 'Account',
            ),
          ],
          onTap: widget.onTap,
        ),
      ),
    );
  }
}
