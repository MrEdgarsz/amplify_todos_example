import 'package:flutter/material.dart';
import 'package:todos_example/todo/controllers/bloc/todo_bloc.dart';
import 'package:todos_example/todo/models/todo_model.dart';
import 'package:todos_example/todo/models/todo_status.dart';

class TodoTile extends StatelessWidget {
  final Todo todo;
  final void Function()? onTap;
  final void Function(DragUpdateDetails)? onDragUpdate;

  const TodoTile({
    Key? key,
    this.onTap,
    this.onDragUpdate,
    required this.todo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Draggable<Todo>(
      onDragUpdate: onDragUpdate,
      feedback: SizedBox(
        width: MediaQuery.of(context).size.width * 0.85,
        child: TodoListTile(
          title: Text(todo.title),
          subtitle: Text(todo.description),
          prefix: todo.state == TodoStatus.finished
              ? const Icon(Icons.check_box)
              : const Icon(Icons.check_box_outline_blank),
        ),
      ),
      data: todo,
      child: GestureDetector(
        onTap: onTap,
        child: TodoListTile(
          title: Text(todo.title),
          subtitle: Text(todo.description),
          prefix: todo.state == TodoStatus.finished
              ? const Icon(Icons.check_box)
              : const Icon(Icons.check_box_outline_blank),
        ),
      ),
    );
  }
}

class TodoListTile extends StatelessWidget {
  final Widget title;
  final Widget subtitle;
  final Widget prefix;
  const TodoListTile({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.prefix,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[200],
      padding: const EdgeInsets.all(10),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          prefix,
          const SizedBox(width: 15),
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                DefaultTextStyle(
                  child: title,
                  style: TextStyle(
                    color: Colors.grey[700],
                    fontWeight: FontWeight.bold,
                  ),
                ),
                DefaultTextStyle(
                  child: subtitle,
                  style: TextStyle(
                    color: Colors.grey[700],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
