import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'My app',
    home: Scaffold(
      backgroundColor: Colors.grey[400],
      appBar: AppBar(
        backgroundColor: Colors.grey[700],
        title: Center(
          child: Text('I Am Rich'),
        ),
      ),
      body: Center(
        child: Image(
          image: AssetImage('image/diamond.png'),
        ),
      ),
    ),
  ));
}
