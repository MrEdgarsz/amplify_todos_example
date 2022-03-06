import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:todos_example/todo/models/todo_status.dart';

part 'todo_model.freezed.dart';

@freezed
class Todo with _$Todo {
  const factory Todo({
    required int? id,
    required String title,
    required String description,
    required TodoStatus state,
  }) = _Todo;
}
