import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:second/responsive/mobile_screen_layout.dart';
import 'package:second/responsive/reponsive.dart';
import 'package:second/responsive/web_screen_layout.dart';
import 'package:second/screens/login_screen.dart';
import 'package:second/screens/signup_screen.dart';
import 'package:second/utilities/color.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
      options: const FirebaseOptions(
        apiKey: "AIzaSyBtoYBKvgM7HlPbwTIfH2-PpLRRsyKdx5I",
        appId: "1:189151860881:web:69337b36e84b94656b4730",
        messagingSenderId: "189151860881",
        projectId: "instagram-clone-867a8",
        storageBucket: "instagram-clone-867a8.appspot.com",
      ),
    );
  } else {
    await Firebase.initializeApp();
  }

  runApp(
    MaterialApp(
      title: 'instagram clone',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: mobileBackgroundColor,
      ),
      // home: Scaffold(
      //   body: Responseive(
      //     mobileScreenLayout: MobileScreenLayout(),
      //     webScreenLayout: WebScreenLayout(),
      //   ),
      // ),

      home: SignUpScreen(),
    ),
  );
}
