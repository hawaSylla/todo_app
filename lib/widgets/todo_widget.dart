import 'package:todo_app/model/todo.dart';
import 'package:flutter/material.dart';
import 'widgets.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class TodoWidget extends StatelessWidget {
  final Todo todo;
  const TodoWidget({required this.todo, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: Slidable(
            startActionPane: ActionPane(
              motion: const BehindMotion(),
              extentRatio: 0.25,
              children: [
                SlidableAction(
                  label: 'Edit',
                  backgroundColor: Colors.green.shade100,
                  icon: Icons.edit,
                  onPressed: (context) {},
                ),
              ],
            ),
            endActionPane: ActionPane(
              motion: const BehindMotion(),
              extentRatio: 0.25,
              children: [
                SlidableAction(
                  label: 'Delete',
                  backgroundColor: Colors.red.shade100,
                  icon: Icons.delete,
                  onPressed: (context) {},
                ),
              ],
            ),
            key: Key(todo.id),
            child: buildTodo(context)),
      );

  Widget buildTodo(BuildContext context) => Container(
        padding: EdgeInsets.all(20),
        color: Colors.white,
        child: Row(
          children: [
            Checkbox(
              activeColor: Theme.of(context).primaryColor,
              value: todo.isDone,
              onChanged: (_) {},
              checkColor: Colors.white,
            ),
            const SizedBox(
              width: 20,
            ),
            Expanded(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(todo.title,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).primaryColor,
                      fontSize: 22,
                    )),
                if (todo.description.isNotEmpty)
                  Container(
                    margin: EdgeInsets.only(top: 4),
                    child: Text(
                      todo.description,
                      style: TextStyle(fontSize: 20, height: 1.5),
                    ),
                  )
              ],
            ))
          ],
        ),
      );
}
