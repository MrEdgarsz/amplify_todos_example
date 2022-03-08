import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:todos_example/models/TodoModel.dart';
import 'package:todos_example/todo/models/todo_status.dart';

part 'todo_model.freezed.dart';

@freezed
class Todo with _$Todo {
  const factory Todo({
    required String? id,
    required String title,
    required String description,
    required TodoStatus state,
  }) = _Todo;

  factory Todo.fromAmplifyModel(TodoModel amplifyModel) => Todo(
        id: amplifyModel.id,
        title: amplifyModel.title ?? " ",
        description: amplifyModel.description ?? " ",
        state: amplifyModel.status!.asTodoStatus,
      );
}

extension AmplifyTodo on Todo {
  TodoModel get asAmplifyModel => TodoModel(
        id: id,
        title: title,
        description: description,
        status: state.asAmplifyModel,
      );
}
