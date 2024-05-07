// ignore_for_file: file_names
import 'package:flutter/material.dart';
import '../widgets/Tast_List_view.dart';
import '../widgets/Add_Task_Bottom_Sheet.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE2E6FF),
      appBar: AppBar(
        backgroundColor: const Color(0xFF939FE4),
        title: const Center(
          child: Text(
            'My Tasks',
            style: TextStyle(
              color: Colors.white,
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: [
            Expanded(
              child: TasksListView(),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (context) => const AddTaskBottomSheet(),
          );
        },
        backgroundColor: const Color(0xFF939FE4),
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}
