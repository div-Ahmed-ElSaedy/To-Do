// ignore_for_file: file_names

import 'package:flutter/material.dart';

import 'Custom_Bottom.dart';
import 'Custom_Text_Field.dart';

class EditTaskBottomSheet extends StatelessWidget {
  const EditTaskBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const CustomTextField(
              hintText: 'Tittle',
            ),
            const SizedBox(height: 20),
            const CustomTextField(
              maxLine: 5,
              hintText: 'Content',
            ),
            const SizedBox(height: 20),
            CustomBottom(
              onTap: () {},
              tittle: 'Save',
              // des: 'Saved successfully',
            ),
          ],
        ),
      ),
    );
  }
}
