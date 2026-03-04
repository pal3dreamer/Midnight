import 'package:date_picker_timeline/date_picker_timeline.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:task_manager/tasks/task_provider.dart';
import 'package:task_manager/tasks/widgets/task_card.dart';
// ignore: unused_import
import 'package:task_manager/tasks/task_model.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tasks = ref.watch(taskProviderProvider);
    // ignore: unused_local_variable
    final notifier = ref.read(taskProviderProvider.notifier);
    return Scaffold( 
  /*
      floatingActionButton: FloatingActionButton(onPressed: () {

  notifier.addTask(
    Task(
      id: DateTime.now().toString(),
      title: "Design Dashboard UI",
      description: "Create clean task layout",
      dueDate: DateTime.now(),
      createdAt: DateTime.now(),
      priority: TaskPriority.high
    ),
  );

  notifier.addTask(
    Task(
      id: DateTime.now().add(const Duration(milliseconds: 1)).toString(),
      title: "Fix Riverpod State",
      description: "Test provider rebuild",
      dueDate: DateTime.now(),
      createdAt: DateTime.now(),
      priority: TaskPriority.low
    ),
  );

  notifier.addTask(
    Task(
      id: DateTime.now().add(const Duration(milliseconds: 2)).toString(),
      title: "Add Bottom Sheet Form",
      description: "Implement modal UI",
      dueDate: DateTime.now(),
      createdAt: DateTime.now(),
      priority: TaskPriority.medium
    ),
  );
}),
*/
      backgroundColor: Color(0xFF1b1b1b),
      body: SafeArea(
child: Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    Padding(
    padding: EdgeInsetsGeometry.all(20),
    child: Text("Manage \nyour tasks ✏️ ",
    style: TextStyle(
      fontFamily: "DM Sans",
      color: Colors.white,
      fontSize: 44,
      fontWeight: FontWeight.bold,
    )
    ),
    ),

    Padding(
   padding: EdgeInsetsGeometry.all(20),
   child: SizedBox( 
   height: 100,
   child: DatePicker(
                  DateTime.now(),
                  initialSelectedDate: DateTime.now(),
                  selectionColor: Colors.white,
                  selectedTextColor: Colors.black,
dateTextStyle: TextStyle(
  color: Colors.white,
  fontWeight: FontWeight.w500,
),
                  monthTextStyle: TextStyle(
                    color: Colors.white,
                    fontFamily: "DM Sans"
                  ),
                  dayTextStyle: TextStyle(
                     color: Colors.white,
                     fontFamily: "DM Sans"
                  ),
                  width: 60,
                  height: 80,
        )
)
),
Expanded(
  child: 
ListView.builder(
  padding: EdgeInsets.all(20),
  shrinkWrap: true,
  itemCount: tasks.length,
  itemBuilder: (context, index, )
{
  return TaskCard(task: tasks[index]);
}))
],
      ),
      )
      );
  }
}