import 'package:flutter/material.dart';

class message extends StatefulWidget {
  final String name;
  final String image;

  message({required this.name, required this.image});

  @override
  _messageState createState() => _messageState();
}

class _messageState extends State<message> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Row(
          children: [
            CircleAvatar(
              radius: 20,
              backgroundImage: AssetImage('images/${widget.image}.jpg'),
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              widget.name,
              style: TextStyle(
                color: Color.fromARGB(255, 255, 255, 255),
              ),
            ),
          ],
        ), // Access the title from the widget's instance
      ),
      body: Center(
        child: Text(
            'This is'), // Access the title directly from the state
      ),
    );
  }
}
