import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task_management_2/components/profile_sheet.dart';
import 'package:task_management_2/models/task_manager.dart';
import 'package:task_management_2/screens/task_list_screen.dart';

import 'empty_task_screen.dart';
import 'task_item_screen.dart';

// TODO 2: Membuat Task Screen
class TaskScreen extends StatelessWidget {
  const TaskScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Task Management'),
        centerTitle: true,
        // TODO 20: buat bottom sheet
        actions: [
          IconButton(
            onPressed: () {
              showModalBottomSheet(
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(20),
                  ),
                ),
                context: context,
                // TODO 22:mengganti Container pada builder showModalBottomSheet menjadi ProfileSheet()
                builder: (context) => const ProfileSheet(),
              );
            },
            icon: const Icon(Icons.account_circle),
          ),
        ],
      ),

      // TODO 9: Buat Floating Action Button dan Navigasi ke task item screen
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          final manager = Provider.of<TaskManager>(context, listen: false);
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => TaskItemScreen(
                onCreate: (task) {
                  manager.addTask(task);
                  Navigator.pop(context);
                },
              ),
            ),
          );
        },
      ),
      // TODO 7: Add buildTaskScreen
      body: buildTaskScreen(),
    );
  }

  Widget buildTaskScreen() {
    return Consumer<TaskManager>(
      builder: (context, manager, child) {
        if (manager.taskModels.isNotEmpty) {
          return TaskListScreen(
            manager: manager,
          );
        } else {
          return const EmptyTaskScreen();
        }
      },
    );
  }
}
