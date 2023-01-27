import 'package:firebase_auth/firebase_auth.dart';

class Forgot {
  void forgotPassword({required String email}) {
    FirebaseAuth.instance.sendPasswordResetEmail(email: email);
  }
}
