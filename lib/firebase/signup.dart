import 'package:firebase_auth/firebase_auth.dart';

class SignUp {
  void signUpUser({required String email, required String password}) {
    FirebaseAuth.instance
        .createUserWithEmailAndPassword(email: email, password: password);
  }
}
