import 'package:flutter/material.dart';
import 'user_page.dart';

class MyWidget extends StatefulWidget {
  final String name;
  final String image;

  MyWidget({required this.name, required this.image});

  @override
  _MyWidgetState createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
            Text(widget.title), // Access the title from the widget's instance
      ),
      body: Center(
        child: Text(
            'This is ${widget.title}'), // Access the title directly from the state
      ),
    );
  }
}
