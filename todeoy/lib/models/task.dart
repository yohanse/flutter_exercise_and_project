class Tasks {
  final String text;
  bool isChecked;
  Tasks({required this.text, this.isChecked = false});

  void toggle() {
    isChecked = !isChecked;
  }
}
