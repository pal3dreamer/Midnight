import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:task_manager/tasks/task_model.dart';

class TaskCard extends ConsumerWidget {
  final Task task;
  const TaskCard(
  {super.key,
  required this.task
  }
  
  );

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SizedBox(
      height: 210,
      child: Card(
        child: Column(
          children: [
            Text(task.title,
            style: TextStyle(
              color: Colors.white
            ),)
          ],
        )
      ),
    );
  }
}