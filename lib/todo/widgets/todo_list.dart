import 'package:flutter/material.dart';
import 'package:todos_example/todo/models/todo_model.dart';
import 'package:todos_example/todo/models/todo_status.dart';
import 'package:todos_example/todo/widgets/todo_tile.dart';

class TodoList extends StatelessWidget {
  final int itemCount;
  final Widget Function(BuildContext, int) itemBuilder;
  final Widget Function(Todo) candidateBuilder;
  final void Function(Todo) onCandidateAccepted;

  const TodoList({
    Key? key,
    required this.onCandidateAccepted,
    required this.itemBuilder,
    required this.candidateBuilder,
    required this.itemCount,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DragTarget<Todo>(
      builder: (context, candidateData, rejectedData) {
        return Padding(
          padding: const EdgeInsets.all(10),
          child: Container(
            color: Colors.grey[300],
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: itemCount + candidateData.length,
              itemBuilder: (context, index) {
                if (index < itemCount) {
                  return itemBuilder(context, index);
                } else {
                  return candidateBuilder(candidateData[index - itemCount]!);
                }
              },
            ),
          ),
        );
      },
      onAccept: onCandidateAccepted,
    );
  }
}
