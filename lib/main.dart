import 'package:flutter/material.dart';
import 'package:super_app/screens/google_map.dart';




void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "7 Food на карте",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
      ),
      home: GoogleMapScreen(),
    );
  }
}
