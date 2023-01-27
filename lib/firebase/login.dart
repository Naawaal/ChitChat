import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Login {
  static void loginUser(
      {required String email, required String password}) async {
    try {
      final loginResult =
          await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      Fluttertoast.showToast(
        msg: 'Login Successfully',
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.green,
        textColor: Colors.white,
        fontSize: 16.0,
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        Fluttertoast.showToast(
          msg: 'No user found for that email.',
          timeInSecForIosWeb: 3,
          backgroundColor: Colors.red,
          textColor: Colors.white,
        );
      } else if (e.code == 'wrong-password') {
        Fluttertoast.showToast(
          msg: 'Wrong password provided for that user.',
          timeInSecForIosWeb: 3,
          backgroundColor: Colors.red,
          textColor: Colors.white,
        );
      } else if (e.code == 'invalid-email') {
        Fluttertoast.showToast(
          msg: 'The email address is not valid.',
          timeInSecForIosWeb: 3,
          backgroundColor: Colors.red,
          textColor: Colors.white,
        );
      } else if (e.code == 'operation-not-allowed') {
        Fluttertoast.showToast(
          msg: 'Email & Password accounts are not enabled.',
          timeInSecForIosWeb: 3,
          backgroundColor: Colors.red,
          textColor: Colors.white,
        );
      } else if (e.code == 'user-disabled') {
        Fluttertoast.showToast(
          msg: 'The user account has been disabled by an administrator.',
          timeInSecForIosWeb: 3,
          backgroundColor: Colors.red,
          textColor: Colors.white,
        );
      } else if (e.code == 'too-many-requests') {
        Fluttertoast.showToast(
          msg:
              'We have blocked all requests from this device due to unusual activity. Try again later.',
          timeInSecForIosWeb: 3,
          backgroundColor: Colors.red,
          textColor: Colors.white,
        );
      }
    }
  }
}
