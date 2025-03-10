import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_foo/models/task_data.dart';

class AddTaskScreen extends StatelessWidget {
  const AddTaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    String newTaskTitle = '';

    return Container(
      color: const Color(0xff757575),
      child: Container(
        padding: const EdgeInsets.all(20.0),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text('Add Task', style: Theme.of(context).textTheme.titleLarge),
              const SizedBox(height: 10.0),
              TextField(
                autofocus: true,
                textAlign: TextAlign.center,
                onChanged: (value) {
                  newTaskTitle = value;
                },
              ),
              const SizedBox(height: 20.0),
              TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.lightBlueAccent,
                  foregroundColor: Colors.white,
                ),
                onPressed: () {
                  Provider.of<TaskData>(
                    context,
                    listen: false,
                  ).addTask(newTaskTitle);
                  Navigator.pop(context);
                },
                child: const Text('Add'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
