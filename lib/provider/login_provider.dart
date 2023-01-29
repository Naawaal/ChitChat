import 'package:chit_chat/firebase/login.dart';
import 'package:flutter/material.dart';

import '../screens/buttom_nav_screen.dart';

class LoginProvider with ChangeNotifier {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  TextEditingController get emailController => _emailController;
  TextEditingController get passwordController => _passwordController;

  void loginUser(context) async {
    final loginUID = await Login.loginUser(
      email: _emailController.text,
      password: _passwordController.text,
    );

    if (loginUID != null) {
      Navigator.pushNamed(context, ButtomNavigationScreen.chatRoute);
    }
  }
}
