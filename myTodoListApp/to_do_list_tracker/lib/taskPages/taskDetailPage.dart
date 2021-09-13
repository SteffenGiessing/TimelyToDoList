import 'package:flutter/material.dart';
import 'package:to_do_list_tracker/database/connection.dart';
import 'package:to_do_list_tracker/modals/taskModel.dart';

class TaskDetailPage extends StatefulWidget {
  final int taskId;

  const TaskDetailPage({
    Key? key,
    required this.taskId,
  }) : super(key: key);

  @override
  _TaskDetailPageState createState() => _TaskDetailPageState();
}

class _TaskDetailPageState extends State<TaskDetailPage> {
  late Task task;
  bool isLoading = false;

  @override
  void initState() {
    super.initState();

    refreshNote();
  }

  Future refreshNote() async {
    setState(() => isLoading = true);
  //  this.task = await DatabaseConnection.connection.readTasks(widget.taskId);
    setState(() => isLoading = false);
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        // TODO: implement build
        appBar: AppBar(
          actions: [editButton(), deleteButton()],
        ),
        body: isLoading
            ? Center(child: CircularProgressIndicator())
            : Padding(
                padding: EdgeInsets.all(12),
              ),
      );
  Widget editButton() => IconButton(
      icon: Icon(Icons.edit_outlined),
      onPressed: () async {}
        // if (isLoading) return;
        // await Navigator.of(context).push(MaterialPageRoute(
        //   builder: (context) => AddEditTaskPage(task: task),
        // ));
        //refreshNote();
      //}
      );
  Widget deleteButton() =>
      IconButton(icon: Icon(Icons.delete), onPressed: () async {});
}
