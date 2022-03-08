import 'package:todos_example/todo/interfaces/todo_interface.dart';
import 'package:todos_example/todo/models/todo_model.dart';
import 'package:todos_example/todo/models/todo_status.dart';
import '../../constants.dart' as constants;

class TodoTestService implements TodoInterface {
  List<Todo> todos = [
    const Todo(
      id: "1",
      title: 'Todo 1',
      description: 'Todo 1 description',
      state: TodoStatus.todo,
    ),
    const Todo(
      id: "2",
      title: 'Todo 2',
      description: 'Todo 2 description',
      state: TodoStatus.todo,
    ),
    const Todo(
      id: "3",
      title: 'Todo 3',
      description: 'Todo 3 description',
      state: TodoStatus.todo,
    ),
    const Todo(
      id: "4",
      title: 'Todo 4',
      description: 'Todo 4 description',
      state: TodoStatus.inprogress,
    ),
    const Todo(
      id: "5",
      title: 'Todo 5',
      description: 'Todo 5 description',
      state: TodoStatus.finished,
    ),
    const Todo(
      id: "6",
      title: 'Todo 6',
      description: 'Todo 6 description',
      state: TodoStatus.finished,
    ),
    const Todo(
      id: "7",
      title: 'Todo 7',
      description: 'Todo 7 description',
      state: TodoStatus.inprogress,
    ),
  ];

  @override
  Future<List<Todo>> getTodos() async {
    await Future.delayed(constants.testServiceRequestDuration);
    return todos;
  }

  @override
  Future<Todo> getTodo(String id) async {
    await Future.delayed(constants.testServiceRequestDuration);
    return todos.firstWhere((todo) => todo.id == id);
  }

  @override
  Future<void> createTodo(Todo todo) async {
    await Future.delayed(constants.testServiceRequestDuration);
    todos.add(todo);
  }

  @override
  Future<void> updateTodo(Todo todo) async {
    await Future.delayed(constants.testServiceRequestDuration);
    todos.removeWhere((t) => t.id == todo.id);
    todos.add(todo);
  }

  @override
  Future<void> deleteTodo(String id) async {
    await Future.delayed(constants.testServiceRequestDuration);
    todos.removeWhere((todo) => todo.id == id);
  }

  @override
  Stream<List<Todo>> watchTodos() {
    // TODO: implement watchTodos
    throw UnimplementedError();
  }
}
