import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  const TaskTile({
    super.key,
    required this.isChecked,
    required this.taskTitle,
    required this.checkboxCallback,
    required this.longPressCallback,
  });

  final bool isChecked;
  final String taskTitle;
  final void Function(bool?) checkboxCallback;
  final void Function() longPressCallback;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTitle,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : TextDecoration.none,
          color: isChecked ? Colors.grey : null,
        ),
      ),
      trailing: Checkbox(
        activeColor: Theme.of(context).colorScheme.primary,
        value: isChecked,
        onChanged: checkboxCallback,
      ),
      onLongPress: longPressCallback,
    );
  }
}
