import 'package:flutter/material.dart';

showSnackBar(String res, BuildContext context) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(res),
    ),
  );
}
