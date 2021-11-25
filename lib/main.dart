import 'package:flutter/material.dart';
import 'package:super_app/screens/login.dart';
import 'package:super_app/screens/tasks_screen.dart';
import 'package:provider/provider.dart';
import 'package:super_app/models/task_data.dart';
import 'package:super_app/screens/login_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      builder: (context) => TaskData(),
      child: MaterialApp(
        home: Login(),
      ),
    );
  }
}
