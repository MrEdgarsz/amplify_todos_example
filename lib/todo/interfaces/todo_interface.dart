import 'package:todos_example/todo/models/todo_model.dart';

abstract class TodoInterface {
  Future<List<Todo>> getTodos();
  Future<Todo> getTodo(int id);
  Future<Todo> createTodo(Todo todo);
  Future<Todo> updateTodo(Todo todo);
  Future<void> deleteTodo(int id);
}
