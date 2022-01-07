import 'package:todo_app/widgets/widgets.dart';

import '/model/todo.dart';
import '/provider/todos.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

class TodoListWidget extends StatelessWidget {
  const TodoListWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<TodosProvider>(context);
    final todos = provider.todos;
    return todos.isEmpty
        ? Center(
            child: Text(
              'Nothing To-do!',
              style: TextStyle(fontSize: 20),
            ),
          )
        : ListView.separated(
            physics: BouncingScrollPhysics(),
            padding: EdgeInsets.all(16),
            itemBuilder: (context, index) {
              final todo = todos[index];
              return TodoWidget(todo: todo);
            },
            itemCount: todos.length,
            separatorBuilder: (BuildContext context, int index) => Container(
              height: 8,
            ),
          );
  }
}
