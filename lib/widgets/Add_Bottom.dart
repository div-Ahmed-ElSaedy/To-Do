import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';

class AddBottom extends StatelessWidget {
  const AddBottom({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        AwesomeDialog(
          context: context,
          dialogType: DialogType.success,
          animType: AnimType.topSlide,
          showCloseIcon: true,
          title: 'Sussess',
          desc: 'The task has been added successfully',
        ).show();
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
