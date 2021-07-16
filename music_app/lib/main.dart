import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    Widget myButton(Color color , int soundFileNum){
      return Expanded(
        child: FlatButton(
          onPressed: (){
            final player = AudioCache();
            player.play('note$soundFileNum.wav');
          },
          color:color,
        ),
      );
    }
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SafeArea(
        child: Scaffold(
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              myButton(Colors.red, 1),
              myButton(Colors.orange, 2),
              myButton(Colors.yellow, 3),
              myButton(Colors.green, 4),
              myButton(Colors.blue, 5),
              myButton(Colors.indigo, 6),
              myButton(Colors.purple, 7),

            ],
          ),
        ),
      ),
    );
  }
}
