// import 'dart:async';
// import 'package:to_do_list_tracker/modals/taskModel.dart';
// import 'package:sqflite/sqflite.dart';
// import 'package:path/path.dart';

// class DatabaseConnection {
//   static final DatabaseConnection connection = DatabaseConnection._init();

//   static Database? _database;

//   DatabaseConnection._init();

//   Future<Database> get database async {
//     if (_database != null) return _database!;

//     _database = await _initDB('task.db');
//     return _database!;
//   }

//   Future<Database> _initDB(String filePath) async {
//     final pathDb = await getDatabasesPath();

//     final path = join(pathDb, filePath);

//     return await openDatabase(path, version: 1, onCreate: _createDB);
//   }

//   Future _createDB(Database db, int version) async {
//     final taskId = 'INTEGER PRIMARY KEY AUTOINCREMENT';
//     final info = 'TEXT NOT NULL';
//     final dates = 'TEXT NOT NULL';
//     final task = 'TEXT NOT NULL';

//     await db.execute('''
//     CREATE TABLE $taskTable ( 
//       ${TaskModal.id} $taskId,
//       ${TaskModal.info} $info,
//       ${TaskModal.dates} $dates,
//       ${TaskModal.task} $task
//     )
//     ''');
//   }

//   Future<Task> create(Task task) async {
//     final db = await connection.database;

//     final id = await db.insert(taskTable, task.);
//     return task.copy(id: id);
//   }

//   Future<Task> readTasks(int id) async {
//     final db = await connection.database;

//     final map = await db.query(
//       taskTable,
//       columns: TaskModal.values,
//       where: '${TaskModal.id} = ?',
//       whereArgs: [id],
//     );

//     if (map.isEmpty) {
//       return Task.fromJson(map.first);
//     } else {
//       throw Exception('ID $id not found');
//     }
//   }

//   Future<List<Task>> readAllTask() async {
//     final db = await connection.database;

//     final orderby = '${TaskModal.info} ASC';

//     final result = await db.query(taskTable, orderBy: orderby);
//     return result.map((json) => Task.fromJson(json)).toList();
//   }

//   Future close() async {
//     final db = await connection.database;

//     db.close();
//   }
// }
