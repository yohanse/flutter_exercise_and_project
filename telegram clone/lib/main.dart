import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: StoryPage(),
    ),
  );
}

TextButton user_interface(String name, String image) {
  return TextButton(
    onPressed: () {},
    style: ButtonStyle(
      backgroundColor:
          MaterialStateProperty.all<Color>(Color.fromARGB(120, 14, 13, 13)),
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
            color: Colors.white,
          ),
        ),
      ],
    ),
  );
}

class StoryPage extends StatefulWidget {
  _StoryPageState createState() => _StoryPageState();
}

class _StoryPageState extends State<StoryPage> {
  List body_widget = [
    Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
              radius: 70,
              backgroundImage: AssetImage('images/telegram.jpg'),
            ),
          TextButton(
            onPressed: () {},
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
            ),
            child: Text(
              "Start Messaging",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    ),
  ];
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
        color: Color.fromARGB(120, 14, 13, 13),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            user_interface("Yohanse Mehabaw", "yohanse"),
            SizedBox(
              width: 600,
              child: Divider(
                color:  Color.fromARGB(255, 0, 0, 0),
              ),
            ),
            user_interface("Ruth Assefa", "ruth")
          ],
        ),
      ),
    );
  }
}
