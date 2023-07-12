import 'package:flutter/material.dart';
import 'package:second/responsive/mobile_screen_layout.dart';
import 'package:second/responsive/reponsive.dart';
import 'package:second/responsive/web_screen_layout.dart';
import 'package:second/utilities/color.dart';

void main() => runApp(
      MaterialApp(
        title: 'instagram clone',
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: mobileBackgroundColor,
        ),
        home: Scaffold(
          body: Responseive(
            mobileScreenLayout: MobileScreenLayout(),
            webScreenLayout: WebScreenLayout(),
          ),
        ),
      ),
    );
