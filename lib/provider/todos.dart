import 'package:flutter/cupertino.dart';
import 'package:todo_app/model/todo.dart';

class TodosProvider extends ChangeNotifier {
  // ignore: prefer_final_fields
  List<Todo> _todos = [
    Todo(
      createdTime: DateTime.now(),
      title: 'Walk the cat🐈‍🐈',
    ),
    Todo(
        createdTime: DateTime.now(),
        title: 'Get The Groceries',
        description: 'eggs, butter, bread(baguette)'),
    Todo(
      createdTime: DateTime.now(),
      title: 'Pack for trip',
    ),
    Todo(
        createdTime: DateTime.now(),
        title: 'Get The Litter',
        description: 'clumping kind'),
    Todo(
      createdTime: DateTime.now(),
      title: 'Pick up wings',
    ),
    Todo(
        createdTime: DateTime.now(),
        title: 'Drop off package',
        description: 'importante'),
    Todo(
      createdTime: DateTime.now(),
      title: 'Prep for school',
    ),
  ];

  List<Todo> get todos => _todos.where((todo) => todo.isDone == false).toList();
}
