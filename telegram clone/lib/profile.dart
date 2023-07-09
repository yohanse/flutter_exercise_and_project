import 'package:flutter/material.dart';
import 'message_interface.dart';

class Profile extends StatelessWidget {
  final String name;
  final String image;
  final int id;
  Profile({required this.name, required this.image, required this.id});
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => message(name: name, image: image, id: id)),
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
}
