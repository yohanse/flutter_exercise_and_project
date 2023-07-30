import 'package:flutter/material.dart';
import 'package:second/data/data.dart';

import '../models/task.dart';

class AddTaskScreen extends StatelessWidget {
  final TextEditingController textController;
  final Function function;
  const AddTaskScreen(
      {super.key, required this.textController, required this.function});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        padding: const EdgeInsets.all(30),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                "Add Task",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.lightBlueAccent,
                  fontSize: 30,
                ),
              ),
              TextField(
                autofocus: true,
                controller: this.textController,
                decoration: InputDecoration(
                  hintText: "Name Of The Task",
                  hintStyle: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  data.add(Tasks(text: textController.text));
                  function();
                  Navigator.pop(context);
                },
                child: Text(
                  "Add",
                  style: TextStyle(color: Colors.white),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
