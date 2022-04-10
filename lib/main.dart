import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/Screen/TaskScreen.dart';
import 'package:todoey_flutter/models/task_data.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => TaskData(),
      child: MaterialApp(
        home: TasksScreen(),
      ),
    );
  }
}
