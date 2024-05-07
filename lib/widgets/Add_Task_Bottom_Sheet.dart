// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:todo_app/widgets/Add_Bottom.dart';
import 'Add_Task_Field.dart';

class AddTaskBottomSheet extends StatelessWidget {
  const AddTaskBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE2E6FF),
      body: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
        ),
        child: ListView(
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
      ),
    );
  }
}
