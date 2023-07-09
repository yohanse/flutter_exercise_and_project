import 'package:flutter/material.dart';
import 'message_interface.dart';
import 'data.dart';
import 'profile.dart';

class UserPage extends StatefulWidget {
  _UserPageState createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {

  List<Widget> user_generater() {
    List<Widget> result = [];
    for (int i = 0; i < user.length; i++) {
      result.add(Profile(
        name: user[i][0], 
        image: user[i][1], 
        id: i),
      );
      result.add(
        SizedBox(
          width: 600,
          child: Divider(
            color: Color.fromARGB(255, 0, 0, 0),
          ),
        ),
      );
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "User",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 36, 114, 177),
      ),
      body: Container(
        color: Color.fromARGB(120, 255, 255, 255),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: user_generater(),
        ),
      ),
    );
  }
}
