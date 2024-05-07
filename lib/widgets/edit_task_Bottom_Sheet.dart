import 'package:flutter/material.dart';

import 'Add_Bottom.dart';
import 'Add_Task_Field.dart';

class EditTaskBottomSheet extends StatelessWidget {
  const EditTaskBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE2E6FF),
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
                  tittle: 'Save',
                  des: 'Saved successfully',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
