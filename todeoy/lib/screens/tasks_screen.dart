import 'package:flutter/material.dart';
import 'package:second/data/data.dart';
import 'package:second/screens/add_task_sceen.dart';
import 'package:second/utilties/name_check_box.dart';

class TaskScreens extends StatefulWidget {
  const TaskScreens({super.key});

  @override
  State<TaskScreens> createState() => _TaskScreensState();
}

class _TaskScreensState extends State<TaskScreens> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          TextEditingController _addTask = TextEditingController();
          showDialog(
            context: context,
            builder: (context) => AddTaskScreen(
              textController: _addTask,
              function: () {
                setState(() {});
              },
            ),
          );
        },
      ),
      body: Container(
        color: Colors.lightBlueAccent,
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(
                top: 60,
                right: 30,
                left: 30,
                bottom: 30,
              ),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 30,
                    child: Icon(
                      Icons.list,
                      size: 30,
                      color: Colors.lightBlueAccent,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Todoey",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 50,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    "12 Tasks",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(
                    width: double.infinity,
                  )
                ],
              ),
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    topLeft: Radius.circular(20),
                  ),
                ),
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return NameCheckBox(
                      text: data[index].text,
                      isChecked: data[index].isChecked,
                      function: (value) {
                        setState(() {
                          data[index].toggle();
                        });
                      },
                    );
                  },
                  itemCount: data.length,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
