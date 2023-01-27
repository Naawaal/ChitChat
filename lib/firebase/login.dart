import 'package:firebase_auth/firebase_auth.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Login {
  void loginUser({required String email, required String password}) async {
    try {
      final loginResult =
          await FirebaseAuth.instance.signInWithEmailAndPassword(
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
