import 'package:flutter/material.dart';
import 'package:to_do_list_tracker/database/hiveConnection.dart';

class taskCard extends StatefulWidget {
  @override
  _TaskCardPage createState() => _TaskCardPage();
}

class _TaskCardPage extends State<taskCard> {
  HiveConnection _hiveConnection = HiveConnection();


  bool isLoading = false;
  var getBox;

  @override
  void initState()  {
   HiveConnection _hiveConnection = HiveConnection();
     _hiveConnection.createBox();
    getBox = _hiveConnection.readAllData();
    //HashMap<String, String> boxData = getBox.
    super.initState();
  }

  @override
  void dispose() {
    //DatabaseConnection.connection.close();
    super.dispose();
  }

  Future refreshTask() async {
    setState(() => isLoading = true);

    this.getBox = await _hiveConnection.readAllData();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text(
            'Tasks',
            style: TextStyle(fontSize: 24),
          ),
          actions: [Icon(Icons.search), SizedBox(width: 12)],
        ),
        body: Center(
          child: isLoading
              //? CircularProgressIndicator()
              //: getBox.isEmpty
                  ? Text(
                      'No Tasks',
                      style: TextStyle(color: Colors.white, fontSize: 24),
                    ) : Text('data')
                //  : buildTasks(),
        ),
      );
  // Widget buildTasks() => StaggeredGridView.countBuilder(
  //       padding: EdgeInsets.all(8),
  //      // itemCount: getBox.length,
  //       staggeredTileBuilder: (index) => StaggeredTile.fit(2),
  //       crossAxisCount: 4,
  //       mainAxisSpacing: 4,
  //       crossAxisSpacing: 4,
       // itemBuilder: (context, index) {
          //final tasks = getBox[index];

          // return GestureDetector(
          //   onTap: () async {
          //     await Navigator.of(context).push(MaterialPageRoute(
          //       builder: (context) => TaskDetailPage(),
          //     ));
          //     refreshTask();
          //   },
          // );
       // },
     // );
}
