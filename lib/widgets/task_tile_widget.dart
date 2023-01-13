import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {

  final String taskName;
  final bool isChecked;
  final void Function(bool?)? checkboxCallback;
  final void Function() longPressCallBack;

  TaskTile({
    required this.taskName,
    required this.isChecked,
    required this.checkboxCallback,
    required this.longPressCallBack,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressCallBack,
      trailing: Checkbox(
        checkColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: checkboxCallback,
      ),
      title: Text(
        taskName,
        style: TextStyle(
          decoration: isChecked == true ? TextDecoration.lineThrough : TextDecoration.none,
        ),
      ),
    );
  }
}




