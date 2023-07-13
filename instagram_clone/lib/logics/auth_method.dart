import 'dart:typed_data';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AuthMethod {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<String> sigupUser(String name, String email, String password,
      String bio) async {
    String res = "pleas fill all information";
    try {
      if (name.isNotEmpty &&
          email.isNotEmpty &&
          password.isNotEmpty &&
          bio.isNotEmpty) {
        UserCredential cred = await _auth.createUserWithEmailAndPassword(
          email: email,
          password: password,
        );

        await _firestore.collection('user').doc(cred.user!.uid).set(
          {
            'name': name,
            'email': email,
            'uid': cred.user!.uid,
            'bio': bio,
            'followers': [],
            'following': []
          },
        );

        res = "Success";
      }
    } catch (err) {
      res = err.toString();
    }
    print(res);
    return res;
  }
}
