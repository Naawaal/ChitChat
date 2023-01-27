import 'package:chit_chat/firebase/signup.dart';
import 'package:flutter/cupertino.dart';
import 'package:fluttertoast/fluttertoast.dart';

class SignupProvider with ChangeNotifier {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  TextEditingController get nameController => _nameController;
  TextEditingController get phoneController => _phoneController;
  TextEditingController get emailController => _emailController;
  TextEditingController get passwordController => _passwordController;

  void signUpUser(context) {
    SignUp().signUpUser(
        email: _emailController.text, password: _passwordController.text);
    Navigator.pop(context);
    Fluttertoast.showToast(
      msg: 'User Created Successfully',
      timeInSecForIosWeb: 3,
    );
  }
}
