import 'package:chit_chat/provider/forgot_provider.dart';
import 'package:chit_chat/provider/login_provider.dart';
import 'package:chit_chat/provider/signup_provider.dart';
import 'package:chit_chat/screens/forgot_screen.dart';
import 'package:chit_chat/screens/login_screen.dart';
import 'package:chit_chat/screens/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ChitChat extends StatelessWidget {
  const ChitChat({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => LoginProvider()),
        ChangeNotifierProvider(create: (context) => SignupProvider()),
        ChangeNotifierProvider(create: (context) => ForgotProvider())
      ],
      child: MaterialApp(
        title: 'Chit Chat',
        home: const LoginScreen(),
        initialRoute: LoginScreen.loginRoute,
        routes: {
          LoginScreen.loginRoute: (context) => const LoginScreen(),
          SignupScreen.signupRoute: (context) => const SignupScreen(),
          ForgotScreen.forgotRoute: (context) => const ForgotScreen(),
        },
        theme: ThemeData(
          useMaterial3: true,
        ),
      ),
    );
  }
}
