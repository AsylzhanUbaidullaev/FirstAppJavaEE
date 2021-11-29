
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Rating extends StatelessWidget {
  const Rating({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Text("Rating Page"),
      body: Container(
      child: Center(
      child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
      Text(
      "Rating",
      style: TextStyle(
        fontSize: 30,
        color: Colors.blue,
      ),
    ),);
  }
}
