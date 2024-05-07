// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:todo_app/widgets/Add_Bottom.dart';
import '../widgets/Add_Task_Field.dart';

class AddTaskView extends StatelessWidget {
  const AddTaskView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE2E6FF),
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
        backgroundColor: const Color(0xFF939FE4),
        title: const Text(
          'Add Task',
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: ListView(
        children: const [
          Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(
              children: [
                AddTaskField(
                  hintText: 'Tittle',
                ),
                SizedBox(height: 20),
                AddTaskField(
                  hintText: 'Delail',
                ),
                SizedBox(height: 20),
                AddBottom(
                  tittle: 'Add',
                  des: 'The task has been added Successfully',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
