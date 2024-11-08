import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool tileChecked;
  final ValueChanged changeTile;
  final String bodyText;
  final Function()? longPressCallback;

  TaskTile(
      {required this.tileChecked,
      required this.changeTile,
      required this.bodyText,
      required this.longPressCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
        onLongPress: longPressCallback,
        title: Text(
          bodyText,
          style: TextStyle(
              decoration: tileChecked ? TextDecoration.lineThrough : null),
        ),
        trailing: Checkbox(
          value: tileChecked,
          onChanged: changeTile,
        ));
  }
}
