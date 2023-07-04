import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 70,
              backgroundImage: AssetImage('image/dude.jpg'),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
                'yohanse mehabaw',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 30,
                fontFamily: 'pacifico',
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
                'FLUTTER DEVELOPER',
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'pacifico',
              ),
            ),
            SizedBox(
              height: 20,
              width: 60,
              child: Divider(
                color: Colors.teal[100],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 20
              ),
              margin: EdgeInsets.symmetric(
                horizontal: 15,
              ),
              color: Colors.white,
              child: Row(
                children: [
                  Icon(
                    Icons.phone,
                    color: Colors.teal
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Text('+251960192962')
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: 15,
              ),
              padding: EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 20
              ),
              color: Colors.white,
              child: Row(
                children: [
                  Icon(
                    Icons.email,
                    color: Colors.teal,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text('mehabawyohanse793@gmail.com')
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
