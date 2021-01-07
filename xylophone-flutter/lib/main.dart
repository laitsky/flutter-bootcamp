import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  static AudioCache player = AudioCache();

  Expanded buildKey(Color color, String audio) {
    return Expanded(
      child: RaisedButton(
        color: color,
        onPressed: () => player.play('$audio.wav'),
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
              buildKey(Colors.red, 'note1'),
              buildKey(Colors.orange, 'note2'),
              buildKey(Colors.yellow, 'note3'),
              buildKey(Colors.green, 'note4'),
              buildKey(Colors.teal, 'note5'),
              buildKey(Colors.blue, 'note6'),
              buildKey(Colors.purple, 'note7'),
            ],
          ),
        ),
      ),
    );
  }
}
