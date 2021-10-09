import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(const Xylophony());

class Xylophony extends StatelessWidget {
  const Xylophony({Key? key}) : super(key: key);

  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded buildKey({Color? color, required int soundNumber}) {
    return Expanded(
      child: MaterialButton(
        color: color,
        onPressed: () {
          playSound(soundNumber);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 15,
          title: RichText(
            text: const TextSpan(
              style: TextStyle(fontSize: 20),
              children: [
                TextSpan(
                    text: 'XYL',
                    style: TextStyle(color: Colors.orange, letterSpacing: 6)),
                TextSpan(
                    text: 'OPH',
                    style: TextStyle(color: Colors.yellow, letterSpacing: 6)),
                TextSpan(
                    text: 'ONY',
                    style: TextStyle(color: Colors.green, letterSpacing: 6)),
              ],
            ),
          ),
          backgroundColor: Colors.blueGrey[900],
          centerTitle: true,
        ),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(color: Colors.red, soundNumber: 1),
              buildKey(color: Colors.orange, soundNumber: 2),
              buildKey(color: Colors.yellow, soundNumber: 3),
              buildKey(color: Colors.green, soundNumber: 4),
              buildKey(color: Colors.blue, soundNumber: 5),
              buildKey(color: Colors.indigo, soundNumber: 6),
              buildKey(color: Colors.purple, soundNumber: 7),
              buildKey(color: Colors.purple[900], soundNumber: 8),
            ],
          ),
        ),
      ),
    );
  }
}
