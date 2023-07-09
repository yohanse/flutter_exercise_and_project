

import 'package:flutter_chat_bubble/chat_bubble.dart';

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
  List<Widget> generatemessage(id) {
    List<Widget> user = [];
    for (int i = 0; i < userMessage[id].length; i++) {
      if (userMessage[id][i][1]) {
        user.add(
          Row(
            children: [
              Spacer(),
              Expanded(
                flex: 8,
                child: ChatBubble(
                  clipper: ChatBubbleClipper3(type: BubbleType.sendBubble),
                  child: Text(
                    userMessage[id][i][0],
                    style: TextStyle(color: Colors.white),
                  ),
                  alignment: Alignment.topRight,
                ),
              ),
            ],
          ),
        );
      } else {
        user.add(
        Row(
          children: [
            Expanded(
              flex: 8,
              child: ChatBubble(
                clipper: ChatBubbleClipper3(type: BubbleType.receiverBubble),
                child: Text(userMessage[id][i][0]),
                backGroundColor: Color(0xffE7E7ED),
              ),
            ),
            Spacer(), // Empty space taking 20% of the remaining horizontal space
          ],
        ),
      );
      }

      user.add(
        SizedBox(
          height: 12,
        ),
      );
    }
    return user;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 36, 114, 177),
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
      body: Padding(
        padding: EdgeInsets.only(top: 10),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: generatemessage(widget.id),
          ),
        ),
      ),
    );
  }
}
