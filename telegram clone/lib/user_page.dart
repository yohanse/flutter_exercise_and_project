import 'package:flutter/material.dart';
import 'message_interface.dart';

class UserPage extends StatefulWidget {
  _UserPageState createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  TextButton user_interface(String name, String image, int id) {
    return TextButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => message(name: name, image: image, id: id)),
        );
      },
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(
            Color.fromARGB(120, 255, 255, 255)),
      ),
      child: Row(
        children: [
          CircleAvatar(
            radius: 20,
            backgroundImage: AssetImage('images/$image.jpg'),
          ),
          SizedBox(
            width: 10,
          ),
          Text(
            name,
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Telegram",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        color: Color.fromARGB(120, 255, 255, 255),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            user_interface("Yohanse Mehabaw", "yohanse", 0),
            SizedBox(
              width: 600,
              child: Divider(
                color: Color.fromARGB(255, 0, 0, 0),
              ),
            ),
            user_interface("Ruth Assefa", "ruth", 1)
          ],
        ),
      ),
    );
  }
}
