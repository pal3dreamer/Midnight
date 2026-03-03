import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:task_manager/tasks/task_model.dart';

part 'task_provider.g.dart';


@riverpod
class TaskProvider extends _$TaskProvider {
    @override
     List<Task> build() {
        return [];
    }

    void addTask(Task task) {
        state = [...state, task];
    }

    void toggleTask(String id){
        for (final task in state){
            if (task.id == id) {
              task.copyWith(isCompleted: !task.isCompleted);
            }
            else {
            task;
            }
        }}

    void removeTask(String id) {
        state = state.where((task) => task.id != id).toList();
    }
        }
    