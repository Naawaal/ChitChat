import 'package:flutter/cupertino.dart';

import '../firebase/forgot.dart';

class ForgotProvider with ChangeNotifier {
  final TextEditingController _emailController = TextEditingController();

  TextEditingController get emailController => _emailController;

  void forgotPassword() {
    Forgot.forgotPassword(email: _emailController.text);
  }
}
