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
        color: task.priority == TaskPriority.high
        ? Color(0xFFb5cff8)
        : task.priority == TaskPriority.medium
        ? Color(0xFF313131)
        : task.priority == TaskPriority.low
        ? Color(0xFFffffff)
        : Color(0xFF1b1b1b),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Padding(padding: EdgeInsets.all(5),
          child: ElevatedButton(onPressed: (){},
          style: ButtonStyle(
            backgroundColor: WidgetStateColor.fromMap(<WidgetStatesConstraint, Color>{WidgetState.any: task.priority == TaskPriority.high
        ? Colors.white
        : task.priority == TaskPriority.medium
        ? Color(0xFF313131)
        : task.priority == TaskPriority.low
        ? Color(0xFFffffff)
        : Color(0xFF1b1b1b),}),
            foregroundColor: WidgetStateColor.fromMap(<WidgetStatesConstraint, Color>{WidgetState.any: task.priority == TaskPriority.high
        ? Colors.black
        : task.priority == TaskPriority.medium
        ? Colors.white
        : task.priority == TaskPriority.low
        ? Colors.black
        : Color(0xFF1b1b1b),}),
            fixedSize: WidgetStateProperty.fromMap(<WidgetStatesConstraint, Size?>{ 
        WidgetState.any: const Size(86, 30),}),
          ), child: Text(task.priority == TaskPriority.high ? "High" : task.priority == TaskPriority.medium ? "Medium" : task.priority == TaskPriority.low ? "Low" : "error",
          style: TextStyle(
            fontFamily: "DM Sans",
            fontSize: 10,
          ),),
          )
          ),
           Padding(padding: EdgeInsetsGeometry.only(top: 5, left: 10),
            child: Text(task.title,
            style: TextStyle(
              fontFamily: "DM Sans",
              color: task.priority == TaskPriority.high
        ? Colors.black
        : task.priority == TaskPriority.medium
        ? Colors.white
        : task.priority == TaskPriority.low
        ? Colors.black
        : Color(0xFF1b1b1b),
              fontSize: 24
            ),),),
          Text(task.dueDate.toString())

          
          ],
        )
      ),
    );
  }
}