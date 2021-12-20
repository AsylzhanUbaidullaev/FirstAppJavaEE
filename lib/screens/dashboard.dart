import 'package:flutter/material.dart';
import 'package:super_app/domain/user.dart';
import 'package:super_app/providers/user_provider.dart';
import 'package:super_app/screens/search_screen.dart';
import 'package:provider/provider.dart';

class DashBoard extends StatefulWidget {
  @override
  _DashBoardState createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  @override
  Widget build(BuildContext context) {
    User user = Provider.of<UserProvider>(context).user;

    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Recipe App"),
        elevation: 0.1,
      ),
      body: SearchScreen(),
    );
  }
}