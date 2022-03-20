import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded buildKey({int soundNumber, Color color}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          return playSound(soundNumber);
        },
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
              buildKey(color: Colors.red, soundNumber: 1),
              buildKey(color: Colors.orange, soundNumber: 2),
              buildKey(color: Colors.yellowAccent, soundNumber: 3),
              buildKey(color: Colors.green, soundNumber: 4),
              buildKey(color: Colors.pinkAccent, soundNumber: 5),
              buildKey(color: Colors.indigoAccent, soundNumber: 6),
              buildKey(color: Colors.purple, soundNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}

// Expanded(
// child: FlatButton(
// color: Colors.orange,
// onPressed: () {
// playSound(2);
// },
// ),
// ),
// Expanded(
// child: FlatButton(
// color: Colors.yellowAccent,
// onPressed: () {
// playSound(3);
// },
// ),
// ),
// Expanded(
// child: FlatButton(
// color: Colors.green,
// onPressed: () {
// playSound(4);
// },
// ),
// ),
// Expanded(
// child: FlatButton(
// color: Colors.purple,
// onPressed: () {
// playSound(5);
// },
// ),
// ),
// Expanded(
// child: FlatButton(
// color: Colors.indigo,
// onPressed: () {
// playSound(6);
// },
// ),
// ),
// Expanded(
// child: FlatButton(
// color: Colors.pinkAccent,
// onPressed: () {
// playSound(7);
// },
// ),
// ),
