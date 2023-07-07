import 'package:flutter/material.dart';
import 'data.dart';

class message extends StatefulWidget {
  final String name;
  final String image;
  final int id;

  message({required this.name, required this.image, required this.id});

  @override
  _messageState createState() => _messageState();
}

class _messageState extends State<message> {
  List<Row> generatemessage(id) {
    List<Row> user = [];
    for (int i = 0; i < userMessage[id].length; i++) {
      MainAxisAlignment shows = MainAxisAlignment.start;
      if (i % 2 == 0) {
        shows = MainAxisAlignment.end;
      }

      user.add(
        Row(
          mainAxisAlignment: shows,
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: Text(
                userMessage[id][i],
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
          ],
        ),
      );
    }
    return user;
  }

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
      body: Column(
        children: generatemessage(widget.id),
      ),
    );
  }
}
