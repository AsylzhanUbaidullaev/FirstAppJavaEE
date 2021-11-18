import 'package:flutter/material.dart';
import 'package:super_app/screens/tasks_screen.dart';
import 'package:provider/provider.dart';
import 'package:super_app/models/task_data.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      builder: (context) => TaskData(),
      child: MaterialApp(
        home: TasksScreen(),
      ),
    );
  }
}
