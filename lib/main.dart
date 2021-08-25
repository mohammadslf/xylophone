import 'package:flutter/material.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Expanded customButton(Color color, int num, String name) {
    return Expanded(
      child: MaterialButton(
        child: Text(
          "$name",
          style: TextStyle(color: Colors.white, fontSize: 25.0),
        ),
        elevation: 5.0,
        color: color,
        onPressed: () {
          AssetsAudioPlayer.newPlayer().open(
            Audio("assets/note$num"),
            autoStart: true,
            showNotification: true,
          );
          // final player = AudioCache();
          // player.play('note$num.wav');
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
              customButton(Colors.teal, 1, "Mohammad"),
              SizedBox(height: 8.0),
              customButton(Colors.yellowAccent, 2, "Ahmad"),
              SizedBox(height: 8.0),
              customButton(Colors.cyanAccent, 3, "Hammad"),
              SizedBox(height: 8.0),
              customButton(Colors.redAccent, 4, "Hamood"),
              SizedBox(height: 8.0),
              customButton(Colors.greenAccent, 5, "Humaid"),
              SizedBox(height: 8.0),
              customButton(Colors.pinkAccent, 6, "Humadah"),
              SizedBox(height: 8.0),
              customButton(Colors.amberAccent, 7, "Ash"),
              SizedBox(height: 8.0),
            ],
          ),
        ),
      ),
    );
  }
}
