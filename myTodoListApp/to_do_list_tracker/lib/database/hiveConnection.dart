import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'dart:async';

class HiveConnection {
  @override
  void initState() {
    Hive.initFlutter();
  }

  Future createBox() async {
    var taskBox = await Hive.openBox('taskBox');
    taskBox.put("name", "Steffen");
    print('name: ${taskBox.get('name')}');
  }

  Future<Box<dynamic>> readAllData() async {
    await Hive.initFlutter();
    await Hive.openBox('taskBox');
    var box = Hive.box('taskBox');
    box.get('name');
    return box;
  }
}
