import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white54,
        appBar: AppBar(
          title: Text('I am poor'),
          backgroundColor: Colors.white10,
        ),
        body: Center(
          child: Image(
          image: AssetImage('images/stone.png')
        ),
        ),
      ),
    ),
  );
}
