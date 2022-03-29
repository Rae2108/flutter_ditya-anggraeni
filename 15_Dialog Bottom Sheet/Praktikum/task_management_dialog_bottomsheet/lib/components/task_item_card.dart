// TODO 13: buat task item card

import 'package:flutter/material.dart';
import 'package:task_management_2/models/task_model.dart';

class TaskItemCard extends StatelessWidget {
  final TaskModel task;
  // TODO 18: Membuat properti onpPressed
  final Function() onPressed;

  const TaskItemCard({
    Key? key,
    required this.task,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.amberAccent[100],
        borderRadius: BorderRadius.circular(
          20,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(task.taskName),
          IconButton(
            // TODO 17: Membuat dialog
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  content: const Text('Are you sure?'),
                  actions: [
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text('NO'),
                    ),
                    TextButton(
                      onPressed: onPressed,
                      child: const Text('YES'),
                    ),
                  ],
                ),
              );
            },
            icon: const Icon(Icons.delete_forever_rounded),
          ),
        ],
      ),
    );
  }
}
