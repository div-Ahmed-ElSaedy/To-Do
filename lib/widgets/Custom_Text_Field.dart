// ignore_for_file: file_names

import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key, required this.hintText, this.maxLine = 1, this.onSavd});
  final String hintText;
  final int maxLine;
  final void Function(String?)? onSavd;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onSavd,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return 'Field is required';
        } else {
          return null;
        }
      },
      maxLines: maxLine,
      decoration: InputDecoration(
        hintText: hintText,
        filled: true,
        fillColor: const Color(0x7BFFFFFF),
        errorBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
          borderSide: BorderSide(
            color: Colors.red,
          ),
        ),
        enabledBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
          borderSide: BorderSide(
            color: Color(0xFF939FE4),
          ),
        ),
        focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
          borderSide: BorderSide(
            color: Color(0xFF939FE4),
            width: 2.5,
          ),
        ),
      ),
    );
  }
}
