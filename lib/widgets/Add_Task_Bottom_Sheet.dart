// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:todo_app/widgets/Custom_Bottom.dart';
import 'Custom_Text_Field.dart';

class AddTaskBottomSheet extends StatelessWidget {
  const AddTaskBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(20.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            CustomTextField(
              hintText: 'Tittle',
            ),
            SizedBox(height: 20),
            CustomTextField(
              maxLine: 5,
              hintText: 'Content',
            ),
            SizedBox(height: 20),
            CustomBottom(
              tittle: 'Add',
              des: 'The task has been added Successfully',
            ),
          ],
        ),
      ),
    );
  }
}
