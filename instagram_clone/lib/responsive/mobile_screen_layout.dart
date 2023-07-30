import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class MobileScreenLayout extends StatefulWidget {
  const MobileScreenLayout({super.key});

  @override
  State<MobileScreenLayout> createState() => _MobileScreenLayoutState();
}

class _MobileScreenLayoutState extends State<MobileScreenLayout> {
  String userName = '';

  @override
  void initState() {
    super.initState();
    getUserName();
  }

  void getUserName() async {
    DocumentSnapshot fullUserData = await FirebaseFirestore.instance
        .collection('user')
        .doc(FirebaseAuth.instance.currentUser!.uid)
        .get();

    setState(() {
      userName = (fullUserData.data() as Map<String, dynamic>)['pictureUrl'];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Image.network(userName),
    );
  }
}
