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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage('images/my.jpg'),
              ),
              SizedBox(height: 10.0,),
              Text(
                'jeewantha upul',
                style: TextStyle(
                    fontFamily: "Pacifico",
                    fontSize: 40.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ), SizedBox(height: 10.0,),
              Text(
                'FLUTTER DEVELOPER',
                style: TextStyle(
                    fontFamily: "Source Sans",
                    fontSize: 20.0,
                    color: Colors.teal[100],
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2.5),
              ),
              SizedBox(
                height: 20.0,
                width: 150,
                child: Divider(
                  color: Colors.teal[100],
                ),
              ), SizedBox(height: 10.0,),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0 ,horizontal: 16.0),
                child: Card(
                  child: ListTile(
                    leading: Icon(
                      Icons.phone,
                      color: Colors.teal,
                    ),
                    title: Text(
                      '077-63-81-82-4',
                      style: TextStyle(
                        fontFamily: 'Source Sans',
                        fontSize: 20.0,
                        color: Colors.teal[900]
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0 ,horizontal: 16.0),
                child: Card(
                  child: ListTile(
                    leading: Icon(
                      Icons.email,
                      color: Colors.teal,
                    ),
                    title: Text(
                      'Upuljeewantha070@gmail.com',
                      style: TextStyle(
                          fontFamily: 'Source Sans',
                          fontSize: 20.0,
                          color: Colors.teal[900]
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
