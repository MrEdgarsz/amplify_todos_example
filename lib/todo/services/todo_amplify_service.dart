import 'dart:async';

import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:todos_example/models/ModelProvider.dart';
import 'package:todos_example/models/TodoModel.dart';
import 'package:todos_example/todo/interfaces/todo_interface.dart';
import 'package:todos_example/todo/models/todo_model.dart';
import 'package:todos_example/todo/models/todo_status.dart';

class TodoAmplifyService implements TodoInterface {
  @override
  Future<List<Todo>> getTodos() async {
    try {
      final List<TodoModel> todos = await Amplify.DataStore.query<TodoModel>(
        TodoModel.classType,
        sortBy: [
          TodoModel.TITLE.ascending(),
          TodoModel.DESCRIPTION.ascending()
        ],
      );
      return todos.map((todo) => Todo.fromAmplifyModel(todo)).toList();
    } catch (e) {
      print("[Amplify Todo Service] getTodos: $e");
      rethrow;
    }
  }

  @override
  Future<Todo> getTodo(String id) async {
    try {
      final List<TodoModel> todos = await Amplify.DataStore.query<TodoModel>(
        TodoModel.classType,
        where: TodoModel.ID.eq(id),
      );
      if (todos.isNotEmpty) {
        return Todo.fromAmplifyModel(todos.first);
      } else {
        throw Exception("Todo not found");
      }
    } catch (e) {
      print("[Amplify Todo Service] getTodo: $e");
      rethrow;
    }
  }

  @override
  Future<void> createTodo(Todo todo) async {
    try {
      await Amplify.DataStore.save(todo.asAmplifyModel);
    } catch (e) {
      print("[Amplify Todo Service] createTodo: $e");
      rethrow;
    }
  }

  @override
  Future<void> updateTodo(Todo todo) async {
    try {
      await Amplify.DataStore.save(todo.asAmplifyModel);
    } catch (e) {
      print("[Amplify Todo Service] updateTodo: $e");
      rethrow;
    }
  }

  @override
  Future<void> deleteTodo(String id) async {
    try {
      final List<TodoModel> todos = await Amplify.DataStore.query<TodoModel>(
        TodoModel.classType,
        where: TodoModel.ID.eq(id),
      );
      for (TodoModel todo in todos) {
        await Amplify.DataStore.delete<TodoModel>(todo);
      }
    } catch (e) {
      print("[Amplify Todo Service] deleteTodo: $e");
      rethrow;
    }
  }

  @override
  Stream<List<Todo>> watchTodos() {
    return Amplify.DataStore.observeQuery<TodoModel>(
      TodoModel.classType,
      sortBy: [TodoModel.TITLE.ascending(), TodoModel.DESCRIPTION.ascending()],
    ).transform<List<Todo>>(
      StreamTransformer.fromHandlers(
        handleData: (snapshot, sink) {
          sink.add(snapshot.items
              .map((todo) => Todo.fromAmplifyModel(todo))
              .toList());
        },
      ),
    );
  }
}
