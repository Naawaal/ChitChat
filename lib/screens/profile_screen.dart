import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  static const String profileRoute = '/profile';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 100,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Image.asset(
                  'assets/profile.png',
                  height: 100,
                  width: 100,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Nawal Shrestha',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                'karanstha197@gmail.com',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              const Text(
                '9804889314',
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
              const SizedBox(height: 05),
              SizedBox(
                width: 200,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: const Text(
                    'Edit Profile',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              const Divider(
                thickness: 1,
                color: Colors.grey,
              ),
              const SizedBox(height: 10),
              ListTile(
                leading: const Icon(Icons.settings),
                title: const Text('Settings'),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(Icons.help),
                title: const Text('Help'),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(Icons.info),
                title: const Text('About'),
                onTap: () {},
              ),
              const Divider(
                thickness: 1,
                color: Colors.grey,
              ),
              ListTile(
                leading: const Icon(Icons.logout),
                title: const Text('Logout'),
                onTap: () async {
                  if (FirebaseAuth.instance.currentUser != null) {
                    await FirebaseAuth.instance.signOut();
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
