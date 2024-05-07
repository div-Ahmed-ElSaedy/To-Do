// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:quickalert/quickalert.dart';
import 'package:todo_app/widgets/edit_task_Bottom_Sheet.dart';

class ContainerToDo extends StatefulWidget {
  const ContainerToDo({
    super.key,
    required this.title,
    required this.subTitle,
  });
  final String title;
  final String subTitle;

  @override
  State<ContainerToDo> createState() => _ContainerToDoState();
}

class _ContainerToDoState extends State<ContainerToDo> {
  bool chack = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 100,
          width: 1000,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(
              Radius.circular(15),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      textAlign: TextAlign.start,
                      widget.title,
                      maxLines: 1,
                      style: const TextStyle(
                        color: Color(0xFF939FE4),
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    Text(
                      widget.subTitle,
                      textAlign: TextAlign.start,
                    ),
                  ],
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        showModalBottomSheet(
                          context: context,
                          builder: (context) => const EditTaskBottomSheet(),
                        );
                      },
                      icon: const Icon(
                        color: Color(0xFF939FE4),
                        Icons.edit_note,
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        QuickAlert.show(
                          context: context,
                          type: QuickAlertType.warning,
                          confirmBtnColor: Colors.red,
                          text: 'Are you sure',
                          confirmBtnText: 'Delete',
                          showCancelBtn: true,
                          cancelBtnText: 'Cansel',
                          autoCloseDuration: const Duration(seconds: 4),
                          onConfirmBtnTap: () {},
                          onCancelBtnTap: () {
                            Navigator.pop(context);
                          },
                        );
                      },
                      icon: const Icon(
                        color: Color(0xFF939FE4),
                        Icons.delete_forever,
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        setState(
                          () {
                            chack = !chack;
                          },
                        );
                      },
                      icon: chack
                          ? const Icon(
                              color: Color(0xFF939FE4),
                              Icons.check_box,
                            )
                          : const Icon(
                              color: Color(0xFF939FE4),
                              Icons.check_box_outline_blank,
                            ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 10),
      ],
    );
  }
}
