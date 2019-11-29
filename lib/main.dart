import 'package:flutter/material.dart';
import 'package:today/models/task_data.dart';
import 'package:today/screens/tasks_screen.dart';
import 'package:provider/provider.dart';

void main() => runApp(Today());

class Today extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      builder: (context) => TaskData(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: TasksScreen(),
      ),
    );
  }
}
