// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:quickalert/quickalert.dart';
import 'package:todo_app/views/Home_view.dart';

class AddBottom extends StatelessWidget {
  const AddBottom({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        QuickAlert.show(
          context: context,
          type: QuickAlertType.success,
          title: 'Success',
          confirmBtnColor: const Color(0xFF939FE4),
          text: 'The task has been added Successfully',
          onConfirmBtnTap: () {
            Navigator.pop(context);
            Navigator.pop(context);
          },
        );
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xFF939FE4),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        minimumSize: const Size(3000, 55),
      ),
      child: const Text(
        'Add',
        style: TextStyle(
          fontSize: 22,
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
