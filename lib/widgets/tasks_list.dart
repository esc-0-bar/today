import 'package:flutter/material.dart';
import 'package:today/widgets/task_tile.dart';
import 'package:provider/provider.dart';
import 'package:today/models/task_data.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            final task = taskData.tasks[index];
            return TaskTile(
              taskTile: task.name,
              isChecked: task.isDone,
              checkboxCallback: (bool checkboxState) {
                taskData.updateTask(task);
              },
              longPressCallback: () {
                taskData.deleteTask(task);
                Scaffold.of(context).showSnackBar(SnackBar(
                  duration: Duration(milliseconds: 850),
                  content: Text("Task Deleted!"),
                ));
              },
            );
          },
          itemCount: taskData.taskCount,
        );
      },
    );
  }
}
