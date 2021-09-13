import 'dart:collection';
import 'package:to_do_list_tracker/locator.dart';
import 'package:to_do_list_tracker/modals/taskModel.dart';
import 'package:to_do_list_tracker/taskData.dart';

class TaskController {
  late TaskData _taskData;
  late Future init;

  Future<TaskData> initTask() async {
    _taskData = TaskData();
    return _taskData;
  }

  // Future readTask(String task) {
  //   _taskData.writeContent(task);
  // }

  // Future<TaskModal> getAllTask() {
  //   var getConetent = _taskData.readcontent();
  //   return getConetent;
  // }
}
