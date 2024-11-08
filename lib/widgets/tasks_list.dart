import 'package:flutter/material.dart';
import 'task_tile.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/models/data.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
            longPressCallback: () {
              Provider.of<Data>(context, listen: false)
                  .deleteTaskFunction(index);
            },
            tileChecked: Provider.of<Data>(context).tasks[index].checkedBox,
            changeTile: (value) {
              Provider.of<Data>(context, listen: false)
                  .taskToggle(value, index);
            },
            bodyText: Provider.of<Data>(context).tasks[index].taskText);
      },
      itemCount: Provider.of<Data>(context).tasks.length,
    );
  }
}
