import 'package:flutter/material.dart';


class NameCheckBox extends StatelessWidget {
  final String text;
  final bool isChecked;
  final Function function;
  const NameCheckBox(
      {super.key,
      required this.text,
      required this.isChecked,
      required this.function});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null,
          ),
        ),
        isTaskDone(
          isDone: isChecked,
          changeState: function,
        )
      ],
    );
  }
}

class isTaskDone extends StatelessWidget {
  final bool isDone;
  final Function changeState;

  isTaskDone({required this.isDone, required this.changeState});

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: isDone,
      onChanged: (value) {
        changeState(value);
      },
    );
  }
}
