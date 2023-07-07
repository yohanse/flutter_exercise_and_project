import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: myApp(),
      ),
    ),
  );
}

class myApp extends StatelessWidget {
  const myApp({Key? key}) : super(key: key);

  void playMusic(int local) {
    final player = AudioPlayer();
    player.play(AssetSource('note$local.wav'));
  }

  Expanded done(int sound, Color color){
    return Expanded(
      child: TextButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(color),
        ),
        onPressed: () {
          playMusic(sound);
        },
        child: Text('button $sound'),
      ),
    );

  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          done(1, Colors.red),
          done(2, Colors.orange),
          done(3, Colors.yellow),
          done(4, Colors.green),
          done(5, Colors.teal),
          done(6, Colors.blue),
          done(7, Colors.purple),
        ],
      ),
    );
  }
}
