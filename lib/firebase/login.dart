import 'package:firebase_auth/firebase_auth.dart';

class Login {
  void loginUser({required String email, required String password}) {
    FirebaseAuth.instance
        .signInWithEmailAndPassword(email: email, password: password);
  }
}
