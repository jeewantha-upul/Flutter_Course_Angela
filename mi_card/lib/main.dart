import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child:Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                width: 100,
                color: Colors.red,
                child: Text('1'),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    color: Colors.yellow,
                    child: Text('1'),
                  ),
                  Container(
                    width: 100,
                    height: 100,
                    color: Colors.green,
                    child: Text('1'),
                  )
                ],
              ),
              Container(
                width: 100,
                color: Colors.blue,
                child: Text('1'),
              ),
            ],
          )  ,
        ),
      ),
    );
  }
}
