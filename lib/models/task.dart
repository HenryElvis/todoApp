class Task
{
  final String name;
  bool isDone;

  Task({required this.name, this.isDone = false});

  void ToggleDone()
  {
    isDone = !isDone;
  }

  bool get isTaskDone
  {
    return isDone;
  }
}