// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'Container_ToDo.dart';

class TasksListView extends StatelessWidget {
  const TasksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, int index) {
        return const ContainerToDo(
          title: 'ToDo Title',
          subTitle: 'TODo Sub Title',
        );
      },
    );
  }
}
