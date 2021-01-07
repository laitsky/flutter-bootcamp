import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.green[300],
        appBar: AppBar(
          title: Text('I Am Poor - Challenge #1'),
          backgroundColor: Colors.green[800],
        ),
        body: Center(
          child: Image(
            image: AssetImage('images/rock_home.jpg'),
          ),
        ),
      ),
    ),
  );
}
