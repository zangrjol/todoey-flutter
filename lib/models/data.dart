import 'package:flutter/material.dart';
import 'package:todoey_flutter/models/task.dart';

class Data extends ChangeNotifier {
  List<Task> tasks = [
    Task(taskText: 'Buy eggs.'),
    Task(taskText: 'Buy banana.'),
    Task(taskText: 'Buy apple.'),
  ];

  void taskToggle(bool value, int index) {
    tasks[index].checkedBox = value;
    notifyListeners();
  }

  void addTaskFunction(newTaskText) {
    tasks.add(Task(taskText: newTaskText));
    notifyListeners();
  }

  void deleteTaskFunction(index) {
    tasks.removeAt(index);
    notifyListeners();
  }

  int get countTasks {
    return tasks.length;
  }
}
