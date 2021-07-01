import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.red,
          appBar: AppBar(
            title: Center(
              child: Text(
                'Dicee',
                style: TextStyle(fontSize: 30.0),
              ),
            ),
            backgroundColor: Colors.red,
          ),
          body: Dicee(),
        ),
      ),
    ),
  );
}

class Dicee extends StatefulWidget {
  @override
  _DiceeState createState() => _DiceeState();
}

class _DiceeState extends State<Dicee> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: Padding(
                padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                child: Image.asset('images/dice1.png')),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
              child: Image.asset('images/dice1.png'),
            ),
          ),
        ],
      ),
    );
  }
}
