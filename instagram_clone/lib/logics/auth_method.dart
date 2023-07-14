import 'dart:typed_data';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:second/logics/storage_method.dart';
import 'package:second/logics/user_data.dart';

class AuthMethod {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  // to sign up a user
  Future<String> sigupUser(
    String name,
    String email,
    String password,
    String bio,
    Uint8List? file,
  ) async {
    String res = "pleas fill all information";
    try {
      if (name.isNotEmpty &&
          email.isNotEmpty &&
          password.isNotEmpty &&
          bio.isNotEmpty &&
          file != null) {
        UserCredential cred = await _auth.createUserWithEmailAndPassword(
          email: email,
          password: password,
        );

        String pictureUrl =
            await StorageMethod().uploadImage("Profile", file, false);

        UserData user = UserData(
          name: name,
          email: email,
          uid: cred.user!.uid,
          bio: bio,
          pictureUrl: pictureUrl,
          follower: [],
          following: [],
        );
        await _firestore
            .collection('user')
            .doc(cred.user!.uid)
            .set(user.toJson());

        res = "Success";
      }
    } catch (err) {
      res = err.toString();
    }
    print(res);
    return res;
  }

  // to login a user

  Future<String> loginUser(String email, String password) async {
    String res = "have some problem";
    try {
      if (email.isNotEmpty && password.isNotEmpty) {
        await _auth.signInWithEmailAndPassword(
            email: email, password: password);
        res = 'Succes';
      } else {
        res = "please provide all the information";
      }
    } catch (err) {
      res = err.toString();
    }
    return res;
  }
}
