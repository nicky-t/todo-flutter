import 'package:flutter/foundation.dart';

import 'task.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [];

  int get taskCount {
    return tasks.length;
  }

  void addTask(String taskText) {
    tasks.add(Task(name: taskText));
    notifyListeners();
  }

  void removeTask(Task task) {
    if (task.isChecked == true) {
      tasks.remove(task);
      notifyListeners();
    }
  }

  void changeCheckBoxState(Task task) {
    task.changeIsChecked();
    notifyListeners();
  }
}
