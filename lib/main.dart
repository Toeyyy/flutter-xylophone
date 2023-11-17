import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int noteNum, String player) {
    final player = AudioPlayer();
    player.play(AssetSource('note$noteNum.wav'));
  }

  Expanded buildKey(int num, Color color, String player) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          playSound(num, player);
        },
        style: TextButton.styleFrom(backgroundColor: color),
        child: Text(''),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(1, Colors.red, 'player1'),
              buildKey(2, Colors.orange, 'player2'),
              buildKey(3, Colors.yellow, 'player3'),
              buildKey(4, Colors.green, 'player4'),
              buildKey(5, Colors.teal, 'player5'),
              buildKey(6, Colors.blue, 'player6'),
              buildKey(7, Colors.purple, 'player7'),
            ],
          ),
        ),
      ),
    );
  }
}

// TextButton(
// onPressed: () {
// final player = AudioPlayer();
// player.play(AssetSource('note1.wav'));
// },
// child: Text('Click Me'),
// ),
