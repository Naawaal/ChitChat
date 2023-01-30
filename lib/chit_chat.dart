import 'package:chit_chat/firebase/login.dart';
import 'package:chit_chat/provider/forgot_provider.dart';
import 'package:chit_chat/provider/login_provider.dart';
import 'package:chit_chat/provider/signup_provider.dart';
import 'package:chit_chat/screens/buttom_nav_screen.dart';
import 'package:chit_chat/screens/forgot_screen.dart';
import 'package:chit_chat/screens/login_screen.dart';
import 'package:chit_chat/screens/message_screen.dart';
import 'package:chit_chat/screens/profile_screen.dart';
import 'package:chit_chat/screens/signup_screen.dart';
import 'package:chit_chat/validation/wrapper.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ChitChat extends StatelessWidget {
  const ChitChat({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamProvider<User?>(
      create: (context) => Login().checkingAuthUser(context),
      initialData: null,
      builder: (context, child) {
        return MultiProvider(
          providers: [
            ChangeNotifierProvider(create: (context) => LoginProvider()),
            ChangeNotifierProvider(create: (context) => SignupProvider()),
            ChangeNotifierProvider(create: (context) => ForgotProvider()),
          ],
          child: MaterialApp(
            title: 'Chit Chat',
            home: const LoginScreen(),
            initialRoute: Wrapper.wrapperRoute,
            routes: {
              LoginScreen.loginRoute: (context) => const LoginScreen(),
              SignupScreen.signupRoute: (context) => const SignupScreen(),
              ForgotScreen.forgotRoute: (context) => const ForgotScreen(),
              ButtomNavigationScreen.chatRoute: (context) =>
                  const ButtomNavigationScreen(),
              ProfileScreen.profileRoute: (context) => const ProfileScreen(),
              Wrapper.wrapperRoute: (context) => const Wrapper(),
              MessageScreen.messageRoute: (context) => const MessageScreen(),
            },
            theme: ThemeData(
              useMaterial3: true,
            ),
          ),
        );
      },
    );
  }
}
