import 'dart:developer';
import 'package:flutter/services.dart';
import 'package:to_do_list_tracker/database/connection.dart';
import 'package:to_do_list_tracker/modals/taskModel.dart';
import 'package:to_do_list_tracker/taskPages/taskCard.dart';
import 'package:flutter/material.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static final String title = 'Tacker';
// This widget is the root of your application.

  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: title,
        themeMode: ThemeMode.dark,
        theme: ThemeData(
          primarySwatch: Colors.blue,
          scaffoldBackgroundColor: Colors.blueGrey.shade900,
          appBarTheme: AppBarTheme(
            backgroundColor: Colors.transparent,
            elevation: 0,
          ),
        ),
        home: taskCard(),
      );
}

// class MyHomePage extends StatefulWidget {
//   MyHomePage({Key? key, required this.title}) : super(key: key);
//   final String title;

//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       drawer: Drawer(
//         child: ListView(
//           padding: EdgeInsets.zero,
//           children: [
//             const DrawerHeader(
//               decoration: BoxDecoration(
//                 color: Colors.lightBlue,
//               ),
//               child: Text("Drawer Header"),
//             ),
//             ListTile(
//               title: const Text("Item 1"),
//               onTap: () {
//                 log("Hitting item 1");
//                 Navigator.pop(context);
//               },
//             ),
//             ListTile(
//               title: const Text("Task List"),
//               onTap: () {
//                 log("Hitting item 2");
//                 Navigator.pop(context);
//               },
//             ),
//           ],
//         ),
//       ),
//       appBar: AppBar(
//         title: Text(widget.title),
//       ),
//       body: Container(
//         child: ListView.builder(
//           itemCount: 5,
//           padding: const EdgeInsets.all(50),
//           itemBuilder: (context, index) {
//             return taskCard();
//           },
//         ),
//       ),
//     );
//  }
//}
