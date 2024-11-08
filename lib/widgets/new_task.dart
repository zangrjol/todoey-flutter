import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/models/task.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/models/data.dart';

class NewTask extends StatefulWidget {
  @override
  State<NewTask> createState() => _NewTaskState();
}

class _NewTaskState extends State<NewTask> {
  String newTaskText = '';

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const Text(
          'Add Task',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.lightBlueAccent,
            fontSize: 30.0,
          ),
        ),
        TextFormField(
          onChanged: (value) {
            setState(() {
              newTaskText = value; // Update newTaskText when input changes
            });
          },
          autofocus: true,
          textAlign: TextAlign.center,
          decoration: const InputDecoration(
            border: UnderlineInputBorder(),
          ),
        ),
        const SizedBox(
          height: 20.0,
        ),
        TextButton(
          style: ButtonStyle(
            // minimumSize: ,
            foregroundColor: WidgetStateProperty.all<Color>(Colors.white),
            backgroundColor:
                WidgetStateProperty.all<Color>(Colors.lightBlueAccent),
          ),
          onPressed: () {
            Provider.of<Data>(context, listen: false)
                .addTaskFunction(newTaskText);
            Navigator.pop(context); // Close the bottom sheet
          },
          child: Text('Add'),
        )
      ],
    );
  }
}
