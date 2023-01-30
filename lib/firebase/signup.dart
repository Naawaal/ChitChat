import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'package:fluttertoast/fluttertoast.dart';

class SignUp {
  static Future<String?> signUpUser({
    required String email,
    required String password,
    required String name,
    required int number,
  }) async {
    try {
      final signUpResult =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      if (signUpResult.user != null) {
        Fluttertoast.showToast(
          msg: 'User created successfully.',
          timeInSecForIosWeb: 3,
          backgroundColor: Colors.green,
          textColor: Colors.white,
        );
        return signUpResult.user!.uid;
      }
      await saveUserData(
          uid: signUpResult.user!.uid,
          name: name,
          number: number,
          email: email);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        Fluttertoast.showToast(
          msg: 'The password provided is too weak.',
          timeInSecForIosWeb: 3,
          backgroundColor: Colors.red,
          textColor: Colors.white,
        );
      } else if (e.code == 'email-already-in-use') {
        Fluttertoast.showToast(
          msg: 'The account already exists for that email.',
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
      } else if (email.isEmpty || password.isEmpty) {
        Fluttertoast.showToast(
          msg: 'All the fields are required',
          timeInSecForIosWeb: 3,
          backgroundColor: Colors.red,
          textColor: Colors.white,
        );
      }
      return null;
    }
  }

  static Future<void> saveUserData({
    required final String uid,
    required final String name,
    required final int number,
    required final String email,
  }) async {
    try {
      await FirebaseFirestore.instance.collection('users').doc(uid).set({
        'uid': uid,
        'name': name,
        'email': email,
        'number': int.parse(number.toString()),
      });
    } on FirebaseFirestore catch (e) {
      Fluttertoast.showToast(
        msg: e.toString(),
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0,
      );
    }
  }
}
