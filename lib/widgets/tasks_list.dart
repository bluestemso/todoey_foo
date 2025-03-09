import 'package:flutter/material.dart';
import '../widgets/task_tile.dart';
import '../models/task.dart';

class TasksList extends StatelessWidget {
  final List<Task> tasks;
  final Function onToggleTask;

  const TasksList({super.key, required this.tasks, required this.onToggleTask});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: tasks.length,
      itemBuilder: (context, index) {
        return TaskTile(
          taskTitle: tasks[index].name,
          isChecked: tasks[index].isDone,
          checkboxCallback: (checkboxState) {
            onToggleTask(index);
          },
        );
      },
    );
  }
}
