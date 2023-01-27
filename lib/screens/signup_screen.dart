import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../provider/signup_provider.dart';
import '../widgets/button_widget.dart';
import '../widgets/image_widget.dart';
import '../widgets/textfield_widget.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  static const String signupRoute = '/signup';

  @override
  Widget build(BuildContext context) {
    final signupProvider = Provider.of<SignupProvider>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Signup'),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const ImageWidget(image: 'assets/students.png'),
              const SizedBox(height: 10),
              const Text(
                'Signup',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              //----- TextFormFields For Name ----//
              TextFormFieldWidgets(
                hintText: 'Enter Your Name',
                labelText: 'Name',
                prefixIcon: const Icon(Icons.person),
                controller: signupProvider.nameController,
              ),
              //----- TextFormFields For Email ----//
              TextFormFieldWidgets(
                hintText: 'Enter Your Phone Number',
                labelText: 'Phone Number',
                prefixIcon: const Icon(Icons.phone),
                controller: signupProvider.phoneController,
              ),
              //----- TextFormFields For Email ----//
              TextFormFieldWidgets(
                hintText: 'Enter Your Email',
                labelText: 'Email',
                controller: signupProvider.emailController,
                prefixIcon: const Icon(Icons.email),
              ),
              //----- TextFormFields For Password ----//
              TextFormFieldWidgets(
                hintText: 'Enter Your Password',
                labelText: 'Password',
                controller: signupProvider.passwordController,
                prefixIcon: const Icon(Icons.lock),
              ),
              //----- Button For Login ----//
              ButtonWidget(
                text: 'Signup',
                onPressed: () {
                  signupProvider.signUpUser();
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
                  Navigator.pop(context);
                },
                child: Text(
                  'Already have an account? Login',
                  style: TextStyle(
                    color: Colors.grey[800],
                    fontSize: 16,
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.1,
              )
            ],
          ),
        ),
      ),
    );
  }
}
