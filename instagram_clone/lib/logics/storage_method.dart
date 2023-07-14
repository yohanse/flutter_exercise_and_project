import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'dart:typed_data';

class StorageMethod {
  FirebaseStorage _storage = FirebaseStorage.instance;
  FirebaseAuth _auth = FirebaseAuth.instance;

  Future<String> uploadImage(String path, Uint8List file, bool ispost) async {
    Reference ref = _storage.ref().child(path).child(_auth.currentUser!.uid);
    TaskSnapshot snap = await ref.putData(file);
    String downloadUrl = await snap.ref.getDownloadURL();
    return downloadUrl;
  }
}
