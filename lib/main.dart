import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  final player = AudioCache();
  void playFun(int num) {
    player.play('note$num.wav');
  }

  Expanded buildCode(Color color, int num) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playFun(num);
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
            children: <Widget>[
              buildCode(Colors.white60, 1),
              buildCode(Colors.black, 2),
              buildCode(Colors.white, 3),
              buildCode(Colors.black, 4),
              buildCode(Colors.white, 5),
              buildCode(Colors.black, 6),
              buildCode(Colors.white, 7),
            ],
          ),
        ),
      ),
    );
  }
}
