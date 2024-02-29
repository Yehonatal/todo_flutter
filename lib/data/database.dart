import 'package:hive_flutter/hive_flutter.dart';

class ToDoDb {
  List toDoList = [];
  // Reference the box
  final _Box = Hive.box("ToBox");

// 1st opening of app
  void createInitData() {
    toDoList = [
      ["Please not another Todo App 🤧", true],
      ["Study DFA", false],
      ["Go touch grass 🤌🏾", false],
      ["My back hurts 🥴", false],
    ];
  }

  //  Load the data from db
  void loadData() {
    toDoList = _Box.get("TODOLIST");
  }

  // Update the data to the db
  void updateDataBase() {
    _Box.put("TODOLIST", toDoList);
  }
}
