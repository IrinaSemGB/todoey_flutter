import 'package:flutter/foundation.dart';
import 'package:todoey_flutter/models/task.dart';
import 'package:collection/collection.dart';

class TaskData extends ChangeNotifier {

  List<Task> _tasksList = [
    Task(name: 'Buy milk'),
    Task(name: 'Buy eggs'),
    Task(name: 'Buy bread'),
  ];

  UnmodifiableListView<Task> get tasksList {
    return UnmodifiableListView(_tasksList);
  }

  int get tasksCount => _tasksList.length;

  void addTask(String name) {
    final newTask = Task(name: name);
    _tasksList.add(newTask);
    notifyListeners();
  }

  void updateTask(Task task) {
    task.toggleTask();
    notifyListeners();
  }

  void deleteTask(Task task) {
    _tasksList.remove(task);
    notifyListeners();
  }
}