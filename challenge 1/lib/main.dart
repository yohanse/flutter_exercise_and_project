import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('Ask Me Anything'),
        backgroundColor: Colors.blue,
      ),
      body: myPage(),
    ),
  ));
}

class myPage extends StatefulWidget {
  const myPage({Key? key}) : super(key: key);

  @override
  State<myPage> createState() => _myPageState();
}

class _myPageState extends State<myPage> {
  int image_number = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Expanded(
        child: TextButton(
          onPressed: (){
            setState(() {
              image_number = Random().nextInt(4) + 1;
            });
          },
          child: Image(
            image: AssetImage('images/ball${image_number}.png'),
          ),
        ),
      ),
    );
  }
}
