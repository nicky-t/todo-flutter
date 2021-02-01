import 'package:flutter/material.dart';

class AddTasksBottomSheet extends StatefulWidget {
  AddTasksBottomSheet({this.onPressAddTaskButton});

  final Function onPressAddTaskButton;

  @override
  _AddTasksBottomSheetState createState() => _AddTasksBottomSheetState();
}

class _AddTasksBottomSheetState extends State<AddTasksBottomSheet> {
  String taskText;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: 30,
        horizontal: 30,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'Add Task',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.lightBlueAccent,
              fontSize: 30,
            ),
          ),
          TextField(
            enabled: true,
            autofocus: true,
            textAlign: TextAlign.center,
            onChanged: (value) {
              taskText = value;
            },
          ),
          SizedBox(
            height: 20,
          ),
          FlatButton(
            color: Colors.lightBlueAccent,
            onPressed: () {
              widget.onPressAddTaskButton(taskText);
            },
            child: Text(
              'Add',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
