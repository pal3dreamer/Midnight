// connects local db to remote db 
// decides to sync rmotely and save locally and it can createtask and other stuff


import 'package:drift/drift.dart';
import 'package:uuid/uuid.dart';
import 'package:task_manager/data/local/app_database.dart';
import 'package:task_manager/data/local/task_dao.dart';


class TaskRepository {
  final TaskDao taskDao;
  final _uuid = const Uuid();

  TaskRepository({required this.taskDao});

  Stream<List<Task>> watchTasks() {
    return taskDao.watchTasks();
  }

  Future<void> createTask(
    {
      required String id,
      required String title,
      String? description,
      required DateTime dueDate,
      required int priority,

    }
  ) 
  {
    final task = TasksCompanion.insert(
      id: _uuid.v4(),
      title: title,
      description: Value(description),
      dueDate: Value(dueDate),
      priority: priority,
      // createdAt and updatedAt is already initialized by the table
    );
    return taskDao.insertTask(task);
  }

  Future<void> toggleTask({
    required String id,
    required bool isCompleted
  }) {
    return taskDao.toggleTask(id, isCompleted);
  }

  Future<void> deleteTask({required String id}) {
    return taskDao.softDeleteTask(id);
  }
}



