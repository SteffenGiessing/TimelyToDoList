final String taskTable = 'task';

class TaskModal {
  static final List<String> values = [id, info, dates, task];

  static final String id = '_id';
  static final String info = '_info';
  static final String dates = '_dates';
  static final String task = '_task';
}

class Task {
  final int? id;
  final String? info;
  final String? dates;
  final String? task;

  const Task({
    this.id,
    required this.info,
    required this.dates,
    required this.task,
  });

  Task copy({
    int? id,
    String? info,
    String? dates,
    String? task,
  }) =>
      Task(
        id: id ?? this.id,
        info: info ?? this.info,
        dates: dates ?? this.dates,
        task: task ?? this.task,
      );

  static Task fromJson(Map<String, Object?> json) => Task(
        id: json[TaskModal.id] as int?,
        info: json[TaskModal.info] as String?,
        dates: json[TaskModal.dates] as String?,
        task: json[TaskModal.task] as String?,
      );
  Map<String, Object?> toJson() => {
        TaskModal.id: id,
        TaskModal.info: info,
        TaskModal.dates: dates,
        TaskModal.task: task,
      };
}
