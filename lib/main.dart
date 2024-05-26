import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({super.key});


  void setSound(int soundNo){
    final player=AudioPlayer();
    player.play(AssetSource('note$soundNo.wav'));
  }

  Expanded buildApp({required dynamic colour,required int soundNo}){
   return Expanded(
      child: TextButton(
        onPressed: () {
          setSound(soundNo);
        },
        style: TextButton.styleFrom(
          backgroundColor: colour,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(0),
          ),
        ),
        child: const Text(''),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildApp(colour: Colors.red,soundNo: 1),
              buildApp(colour: Colors.orange,soundNo: 2),
              buildApp(colour: Colors.yellow,soundNo: 3),
              buildApp(colour: Colors.green,soundNo: 4),
              buildApp(colour: Colors.teal,soundNo: 5),
              buildApp(colour: Colors.blue,soundNo: 6),
              buildApp(colour: Colors.purple,soundNo: 7),
            ],
          ),
        ),
      ),
    );
  }
}
