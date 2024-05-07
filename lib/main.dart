import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:todo_app/widgets/constants.dart';
import 'models/task_model.dart';
import 'views/Home_view.dart';

void main() async {
  await Hive.initFlutter();

  await Hive.openBox(kTaskBox);
  Hive.registerAdapter(TaskModelAdapter());
  runApp(const ToDoApp());
}

class ToDoApp extends StatelessWidget {
  const ToDoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeView(),
    );
  }
}
