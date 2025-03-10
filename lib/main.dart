import 'package:flutter/material.dart';
import 'package:todoey_foo/screens/tasks_screen.dart';
import 'package:provider/provider.dart';
import 'package:todoey_foo/models/task_data.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TaskData(),
      child: MaterialApp(
        title: 'Todoey Foo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue.shade900),
        ),
        home: const TasksScreen(),
      ),
    );
  }
}
