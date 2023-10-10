import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(
      XylophoneApp(),
    );

class XylophoneApp extends StatelessWidget {
  void playSound(int number) {
    final player = AudioPlayer();
    player.play(
      AssetSource('note$number.wav'),
    );
  }

  Expanded buildTile({int value = 1, Color color = Colors.blueGrey}) {
    return Expanded(
      child: MaterialButton(
        color: color,
        onPressed: () {
          playSound(value);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildTile(value: 1, color: Colors.blueGrey),
              buildTile(value: 2, color: Colors.brown),
              buildTile(value: 3, color: Colors.lime),
              buildTile(value: 4, color: Colors.yellow),
              buildTile(value: 5, color: Colors.amber),
              buildTile(value: 6, color: Colors.orange),
              buildTile(value: 7, color: Colors.deepOrange),
            ],
          ),
        ),
      ),
    );
  }
}
