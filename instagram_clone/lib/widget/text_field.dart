import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class TextFieldInput extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final bool obscure;
  String Value = '';
  TextFieldInput({required this.hintText, required this.icon, this.obscure = false,});

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: (value) {
        Value = value;
      },
      decoration: InputDecoration(
        icon: Icon(icon),
        hintText: hintText,
        hintStyle: TextStyle(
          color: Colors.grey,
        ),
      ),
      obscureText: obscure,
    );
  }

  String getValue() {
    return Value;
  }
}
