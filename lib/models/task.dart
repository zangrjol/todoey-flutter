class Task {
  final String taskText;
  late bool checkedBox;

  Task({required this.taskText, this.checkedBox = false});

  void toggleDone(value) {
    checkedBox = value;
  }
}
