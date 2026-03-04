// database logic goes here, manags the task table
import 'package:drift/drift.dart';
import 'package:task_manager/data/local/app_database.dart';

part 'task_dao.g.dart';

@DriftAccessor(tables: [Tasks])
class TaskDao extends DatabaseAccessor<AppDatabase> with _$TaskDaoMixin{
    TaskDao(super.db);

  Future<List<Task>> getAllTasks() {
    return select(db.tasks).get();
  }

  Stream<List<Task>> watchTasks() {
    return (select(db.tasks)..where((t) => t.isDeleted.equals(false))).watch();
  }

  Future<void> insertTask(TasksCompanion task) {
    return into(db.tasks).insert(task);
  }

  Future<void> updateTask(Task task) {
    return update(db.tasks).replace(task);
  }

  Future<void> toggleTask(String id, bool isCompleted) {
    return (update(db.tasks)..where((t) => t.id.equals(id)))
        .write(TasksCompanion(isCompleted: Value(isCompleted)));
  }

  Future<void> softDeleteTask(String id) {
    return (update(db.tasks)..where((t) => t.id.equals(id)))
        .write(const TasksCompanion(isDeleted: Value(true)));
  }
}

