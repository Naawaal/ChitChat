import 'package:chit_chat/firebase/login.dart';
import 'package:flutter/material.dart';

class LoginProvider with ChangeNotifier {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  TextEditingController get emailController => _emailController;
  TextEditingController get passwordController => _passwordController;

  void loginUser(context) async {
    await Login.loginUser(
      email: _emailController.text,
      password: _passwordController.text,
    );
  }
}
