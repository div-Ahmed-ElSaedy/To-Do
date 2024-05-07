// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:quickalert/quickalert.dart';

class CustomBottom extends StatelessWidget {
  const CustomBottom({
    super.key,
    required this.tittle,
    required this.des,
  });
  final String tittle;
  final String des;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        QuickAlert.show(
          context: context,
          type: QuickAlertType.success,
          title: 'Success',
          confirmBtnColor: const Color(0xFF939FE4),
          text: des,
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
      child: Text(
        tittle,
        style: const TextStyle(
          fontSize: 22,
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
