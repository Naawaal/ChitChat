import 'package:chit_chat/screens/buttom_nav_screen.dart';
import 'package:chit_chat/screens/login_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({super.key});

  static const String wrapperRoute = '/wrapper';

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<User?>(context);
    if (user == null) {
      return const LoginScreen();
    } else {
      return const ButtomNavigationScreen();
    }
  }
}
