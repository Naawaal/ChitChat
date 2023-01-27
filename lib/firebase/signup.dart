import 'package:firebase_auth/firebase_auth.dart';

import 'package:fluttertoast/fluttertoast.dart';

class SignUp {
  void signUpUser({required String email, required String password}) async {
    try {
      final signUpResult =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
    } on FirebaseAuthException catch (e) {
      Fluttertoast.showToast(
        msg: 'Error: ${e.message}',
        timeInSecForIosWeb: 3,
      );
    }
  }
}
