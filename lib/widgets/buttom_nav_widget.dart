import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class ButtomNavigationWidget extends StatelessWidget {
  final List<GButton> tabs;
  final int selectedIndex;
  final Function(int) onTabChange;
  const ButtomNavigationWidget({
    super.key,
    required this.tabs,
    required this.selectedIndex,
    required this.onTabChange,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GNav(
        onTabChange: onTabChange,
        selectedIndex: selectedIndex,
        textSize: 22,
        backgroundColor: Colors.white70,
        padding: const EdgeInsets.all(15),
        tabBackgroundColor: Colors.grey.shade300,
        gap: 8,
        tabs: tabs,
      ),
    );
  }
}
