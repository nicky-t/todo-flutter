import 'package:flutter/material.dart';
import 'package:todo_flutter/model/task.dart';

import 'task_tile.dart';

class TasksList extends StatelessWidget {
  TasksList({this.tasks, this.onPressCheckBox});

  final List<Task> tasks;
  final Function onPressCheckBox;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
          taskTitle: tasks[index].name,
          isChecked: tasks[index].isChecked,
          onPressCheckBox: (checkBoxState) =>
              onPressCheckBox(checkBoxState, index),
        );
      },
      itemCount: tasks.length,
    );
  }
}
