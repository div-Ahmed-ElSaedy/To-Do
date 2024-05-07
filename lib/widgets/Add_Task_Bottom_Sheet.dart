// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:quickalert/quickalert.dart';
import 'package:todo_app/widgets/Custom_Bottom.dart';
import 'Custom_Text_Field.dart';

class AddTaskBottomSheet extends StatelessWidget {
  const AddTaskBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(20.0),
      child: SingleChildScrollView(
        child: AddTaskForm(),
      ),
    );
  }
}

class AddTaskForm extends StatefulWidget {
  const AddTaskForm({
    super.key,
  });

  @override
  State<AddTaskForm> createState() => _AddTaskFormState();
}

class _AddTaskFormState extends State<AddTaskForm> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subTittle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          CustomTextField(
            onSavd: (value) {
              title = value;
            },
            hintText: 'Tittle',
          ),
          const SizedBox(height: 20),
          CustomTextField(
            onSavd: (value) {
              subTittle = value;
            },
            maxLine: 5,
            hintText: 'Content',
          ),
          const SizedBox(height: 20),
          CustomBottom(
            onTap: () {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
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
              } else {
                autovalidateMode = AutovalidateMode.always;
              }
            },
            tittle: 'Add',
          ),
        ],
      ),
    );
  }
}
