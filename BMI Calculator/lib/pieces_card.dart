import 'package:flutter/material.dart';

class Reusable extends StatelessWidget {
  final Color color;
  final Widget child;
  Reusable({required this.color, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: child,
    );
  }
}