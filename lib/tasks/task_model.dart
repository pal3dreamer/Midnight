
enum TaskPriority {
  low,
  medium,
  high,
}
class Task {
  final String id;
  final String title;
  final String? description;
  final DateTime dueDate;
  final bool isCompleted;
  final DateTime createdAt;
  final TaskPriority priority;

const Task({
  required this.id,
  required this.title,
  this.description,
  required this.dueDate,
  this.isCompleted = false,
  required this.createdAt,
  required this.priority,
});


Task copyWith({String? id, String? title, String? description, DateTime? dueDate, bool? isCompleted,DateTime? createdAt, TaskPriority? priority}){
  return Task(
    id: id ?? this.id,
    title: title ?? this.title,
    description: description ?? this.description,
    dueDate: dueDate ?? this.dueDate,
    createdAt: createdAt ?? this.createdAt,
    isCompleted: isCompleted ?? this.isCompleted,
    priority: priority ?? this.priority
  );
}

}
