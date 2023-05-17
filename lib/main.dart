import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  void playsound(int soundNumber) {
    final player = AudioPlayer();
    player.play(
      AssetSource('note$soundNumber.wav'),
    );
  }

  Expanded setkey({Color color,int soundNumber}){
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: color
        ),
        onPressed: () {
          playsound(soundNumber);
        },
      ),
    );
  }



 // ButtonStyle(
 // backgroundColor: MaterialStateProperty.all(Colors: color ),
 // ),


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              setkey(color: Colors.red,soundNumber: 1),
              setkey(color: Colors.green,soundNumber: 2),
              setkey(color: Colors.yellow,soundNumber: 3),
              setkey(color: Colors.blue,soundNumber: 4),
              setkey(color: Colors.pink,soundNumber: 5),
              setkey(color: Colors.purple,soundNumber: 6),
              setkey(color: Colors.orange,soundNumber: 7),

            ],
          ),
        ),
      ),
    );
  }
}
