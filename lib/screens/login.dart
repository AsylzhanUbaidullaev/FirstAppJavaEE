
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:super_app/screens/meals_screen.dart';
class Login extends StatefulWidget {

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          primary: Colors.blueAccent
        ),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => MealsScreen()));
            },
            child: Text(
          'Do Login',
          style: TextStyle(
            fontFamily: 'Inter',
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
        ),
          ),
        ),
      ),
    );
  }
}
