import 'package:flutter/material.dart';
import 'package:today/screens/tasks_screen.dart';

void main() => runApp(Today());

class Today extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TasksScreen(),
    );
  }
}
