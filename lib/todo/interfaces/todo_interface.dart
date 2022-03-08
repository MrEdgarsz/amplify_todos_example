import 'package:todos_example/todo/models/todo_model.dart';

abstract class TodoInterface {
  Future<List<Todo>> getTodos();
  Future<Todo> getTodo(String id);
  Future<void> createTodo(Todo todo);
  Future<void> updateTodo(Todo todo);
  Future<void> deleteTodo(String id);
  Stream<List<Todo>> watchTodos();
}
