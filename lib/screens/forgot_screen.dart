import 'package:chit_chat/widgets/button_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/forgot_provider.dart';
import '../widgets/image_widget.dart';
import '../widgets/textfield_widget.dart';

class ForgotScreen extends StatelessWidget {
  const ForgotScreen({super.key});

  static const String forgotRoute = '/forgot';

  @override
  Widget build(BuildContext context) {
    final forgotProvider = Provider.of<ForgotProvider>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Forgot Password'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const ImageWidget(image: 'assets/forgot.png'),
            const SizedBox(height: 10),
            const Text(
              'Forgot Password',
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
              controller: forgotProvider.emailController,
            ),
            ButtonWidget(
              text: 'Send Email',
              onPressed: () {
                forgotProvider.forgotPassword();
              },
            ),
          ],
        ),
      ),
    );
  }
}
