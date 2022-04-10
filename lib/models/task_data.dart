import 'dart:collection';

import 'package:flutter/foundation.dart';
import 'package:todoey_flutter/models/task.dart';

class TaskData extends ChangeNotifier
{
  List<Task> _task = [
    Task(name: 'Buy milk'),
    Task(name: 'Buy eggs'),
    Task(name: 'Buy apple'),
  ];

  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_task);
  }

  int get taskCount {
    return _task.length;
  }

  void addTask(String newTaskTitle)
  {
    final task = Task(name: newTaskTitle);
    _task.add(task);

    notifyListeners();
  }

  void updateTask(Task task)
  {
    task.ToggleDone();
    notifyListeners();
  }

  void removeTask(Task task)
  {
    if (!task.isTaskDone) return;

    _task.remove(task);
    notifyListeners();
  }
}