import 'package:chit_chat/screens/profile_screen.dart';
import 'package:chit_chat/screens/search_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import '../widgets/buttom_nav_widget.dart';
import 'chat_screen.dart';

class ButtomNavigationScreen extends StatefulWidget {
  const ButtomNavigationScreen({super.key});

  static const String chatRoute = '/chat';

  @override
  State<ButtomNavigationScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ButtomNavigationScreen> {
  int curretIndex = 0;
  late PageController _pageController;
  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        onPageChanged: (index) {
          setState(() {
            curretIndex = index;
          });
        },
        children: [
          const ChatScreen(),
          SearchScreen(),
          const ProfileScreen(),
        ],
      ),
      bottomNavigationBar: ButtomNavigationWidget(
        selectedIndex: curretIndex,
        onTabChange: (int) {
          setState(() {
            _pageController.jumpToPage(int);
          });
        },
        tabs: const [
          GButton(
            icon: Icons.chat_bubble_outline_sharp,
            text: 'Chats',
          ),
          GButton(
            icon: Icons.search,
            text: 'Serach',
          ),
          GButton(
            icon: Icons.person,
            text: 'Profile',
          ),
        ],
      ),
    );
  }
}
