import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Center(
            child: Text('dicee'),
          ),
        ),
        body: dicegame(),
      ),
    ),
  );
}

class dicegame extends StatefulWidget {
  const dicegame({Key? key}) : super(key: key);

  @override
  State<dicegame> createState() => _dicegameState();
}

class _dicegameState extends State<dicegame> {
  int image1 = 1;
  int image2 = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: TextButton(
                onPressed: () {
                  setState(() {
                    image1 = Random().nextInt(6) + 1;
                    image2 = Random().nextInt(6) + 1;
                  });
                },
                child: Image(
                  image: AssetImage('image/$image1.png'),
                ),
              ),
            ),

            SizedBox(
              width: 10,
            ),

            Expanded(
              child: TextButton(
                onPressed: () {
                  setState(() {
                    image2 = Random().nextInt(6) + 1;
                    image1 = Random().nextInt(6) + 1;
                  });
                },
                child: Image(
                  image: AssetImage('image/$image2.png'),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
