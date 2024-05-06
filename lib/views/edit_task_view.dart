import 'package:flutter/material.dart';

import '../widgets/Add_Bottom.dart';
import '../widgets/Add_Task_Field.dart';

class EditTaskview extends StatelessWidget {
  const EditTaskview({super.key});

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
          'Edit Task',
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
                AddBottom(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
