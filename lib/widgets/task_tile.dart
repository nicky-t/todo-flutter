import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_flutter/model/task.dart';
import 'package:todo_flutter/model/task_data.dart';

class TaskTile extends StatelessWidget {
  TaskTile({this.task});

  final Task task;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: () {
        Provider.of<TaskData>(context, listen: false).removeTask(task);
      },
      title: Text(
        task.name,
        style: TextStyle(
          decoration: task.isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        value: task.isChecked,
        activeColor: Colors.lightBlueAccent,
        onChanged: (value) {
          Provider.of<TaskData>(context, listen: false)
              .changeCheckBoxState(task);
        },
      ),
    );
  }
}
