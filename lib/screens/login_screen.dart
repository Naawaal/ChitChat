import 'package:chit_chat/provider/login_provider.dart';
import 'package:chit_chat/screens/forgot_screen.dart';
import 'package:chit_chat/screens/signup_screen.dart';
import 'package:chit_chat/widgets/image_widget.dart';
import 'package:chit_chat/widgets/textfield_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../widgets/button_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  static const String loginRoute = '/login';

  @override
  Widget build(BuildContext context) {
    final loginProvider = Provider.of<LoginProvider>(context, listen: false);
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const ImageWidget(image: 'assets/kids.png'),
              const SizedBox(height: 10),
              const Text(
                'Login',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              //----- TextFormFields For Email ----//
              TextFormFieldWidgets(
                hintText: 'Enter Your Email',
                labelText: 'Email',
                prefixIcon: const Icon(Icons.email),
                controller: loginProvider.emailController,
              ),
              //----- TextFormFields For Password ----//
              TextFormFieldWidgets(
                hintText: 'Enter Your Password',
                labelText: 'Password',
                prefixIcon: const Icon(Icons.lock),
                controller: loginProvider.passwordController,
              ),
              //----- Forgot Password----//
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, ForgotScreen.forgotRoute);
                      },
                      child: Text(
                        'Forgot Password?',
                        style: TextStyle(
                          color: Colors.red[800],
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              //----- Button For Login ----//
              ButtonWidget(
                text: 'Login',
                onPressed: () {
                  loginProvider.loginUser();
                },
              ),
              const SizedBox(height: 10),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Divider(
                  color: Colors.grey,
                  thickness: 1,
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, SignupScreen.signupRoute);
                },
                child: Text(
                  'Didn\'t have an account? Signup',
                  style: TextStyle(
                    color: Colors.grey[800],
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
